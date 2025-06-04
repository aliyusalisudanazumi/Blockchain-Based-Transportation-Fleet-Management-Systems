;; Fleet Operator Verification Contract
;; Validates and manages fleet operators

(define-data-var admin principal tx-sender)

;; Data map for fleet operators
(define-map fleet-operators
  { operator-id: (string-ascii 20) }
  {
    name: (string-ascii 50),
    address: (string-ascii 100),
    license-number: (string-ascii 20),
    verified: bool,
    registration-date: uint
  }
)

;; Register a new fleet operator
(define-public (register-operator
                (operator-id (string-ascii 20))
                (name (string-ascii 50))
                (address (string-ascii 100))
                (license-number (string-ascii 20)))
  (begin
    (asserts! (is-eq tx-sender (var-get admin)) (err u403))
    (asserts! (is-none (map-get? fleet-operators { operator-id: operator-id })) (err u100))
    (ok (map-set fleet-operators
      { operator-id: operator-id }
      {
        name: name,
        address: address,
        license-number: license-number,
        verified: false,
        registration-date: block-height
      }
    ))
  )
)

;; Verify a fleet operator
(define-public (verify-operator (operator-id (string-ascii 20)))
  (let ((operator (unwrap! (map-get? fleet-operators { operator-id: operator-id }) (err u404))))
    (begin
      (asserts! (is-eq tx-sender (var-get admin)) (err u403))
      (ok (map-set fleet-operators
        { operator-id: operator-id }
        (merge operator { verified: true })
      ))
    )
  )
)

;; Check if an operator is verified
(define-read-only (is-verified (operator-id (string-ascii 20)))
  (default-to false (get verified (map-get? fleet-operators { operator-id: operator-id })))
)

;; Get operator details
(define-read-only (get-operator (operator-id (string-ascii 20)))
  (map-get? fleet-operators { operator-id: operator-id })
)

;; Transfer admin rights
(define-public (transfer-admin (new-admin principal))
  (begin
    (asserts! (is-eq tx-sender (var-get admin)) (err u403))
    (ok (var-set admin new-admin))
  )
)
