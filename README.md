# Blockchain-Based Transportation Fleet Management System

A decentralized fleet management system built on the Stacks blockchain using Clarity smart contracts. This system provides transparent, immutable, and efficient management of transportation fleets through blockchain technology.

## 🚛 System Overview

The Fleet Management System consists of five core smart contracts that work together to provide comprehensive fleet operations:

- **Fleet Operator Verification**: Validates and manages fleet operators
- **Vehicle Tracking**: Real-time vehicle location and status tracking
- **Maintenance Scheduling**: Automated maintenance scheduling and tracking
- **Driver Management**: Driver registration, verification, and performance tracking
- **Fuel Optimization**: Fuel consumption monitoring and optimization recommendations

## 📋 Features

### Fleet Operator Verification
- Operator registration and verification
- Role-based access control
- Operator reputation system
- Multi-signature approvals for critical operations

### Vehicle Tracking
- Real-time GPS coordinate logging
- Vehicle status monitoring (active, maintenance, offline)
- Route history and analytics
- Geofencing capabilities

### Maintenance Scheduling
- Automated maintenance reminders based on mileage/time
- Maintenance history tracking
- Service provider management
- Cost tracking and budgeting

### Driver Management
- Driver registration and license verification
- Performance metrics tracking
- Shift scheduling and management
- Safety score calculation

### Fuel Optimization
- Fuel consumption tracking per vehicle
- Route optimization suggestions
- Fuel efficiency analytics
- Cost optimization recommendations

## 🏗️ Architecture

```
┌─────────────────┐    ┌─────────────────┐    ┌─────────────────┐
│ Fleet Operator  │    │ Vehicle Tracking│    │ Driver Management│
│   Verification  │    │    Contract     │    │    Contract     │
└─────────────────┘    └─────────────────┘    └─────────────────┘
         │                       │                       │
         └───────────────────────┼───────────────────────┘
                                 │
         ┌───────────────────────┼───────────────────────┐
         │                       │                       │
┌─────────────────┐    ┌─────────────────┐    ┌─────────────────┐
│ Maintenance     │    │ Fuel Optimization│    │   Data Storage  │
│  Scheduling     │    │    Contract     │    │   & Analytics   │
└─────────────────┘    └─────────────────┘    └─────────────────┘
```

## 🚀 Getting Started

### Prerequisites
- Stacks CLI installed
- Clarinet development environment
- Basic understanding of Clarity smart contracts

### Installation

1. Clone the repository:
```bash
git clone https://github.com/your-org/blockchain-fleet-management
cd blockchain-fleet-management
```

2. Install dependencies:
```bash
clarinet install
```

3. Run tests:
```bash
clarinet test
```

4. Deploy contracts:
```bash
clarinet deploy
```

## 📁 Project Structure

```
blockchain-fleet-management/
├── contracts/
│   ├── fleet-operator-verification.clar
│   ├── vehicle-tracking.clar
│   ├── maintenance-scheduling.clar
│   ├── driver-management.clar
│   └── fuel-optimization.clar
├── tests/
│   ├── fleet-operator-verification.test.ts
│   ├── vehicle-tracking.test.ts
│   ├── maintenance-scheduling.test.ts
│   ├── driver-management.test.ts
│   └── fuel-optimization.test.ts
├── scripts/
│   ├── deploy.ts
│   └── setup.ts
├── docs/
│   ├── API.md
│   └── DEPLOYMENT.md
├── Clarinet.toml
├── package.json
└── README.md
```

## 🔧 Contract Functions

### Fleet Operator Verification
- `register-operator`: Register a new fleet operator
- `verify-operator`: Verify operator credentials
- `get-operator-status`: Check operator verification status
- `update-operator-info`: Update operator information

### Vehicle Tracking
- `register-vehicle`: Add a new vehicle to the fleet
- `update-location`: Update vehicle GPS coordinates
- `set-vehicle-status`: Update vehicle operational status
- `get-vehicle-info`: Retrieve vehicle information

### Maintenance Scheduling
- `schedule-maintenance`: Schedule maintenance for a vehicle
- `complete-maintenance`: Mark maintenance as completed
- `get-maintenance-history`: Retrieve maintenance records
- `calculate-next-service`: Calculate next service date

### Driver Management
- `register-driver`: Register a new driver
- `assign-vehicle`: Assign driver to vehicle
- `update-performance`: Update driver performance metrics
- `get-driver-stats`: Retrieve driver statistics

### Fuel Optimization
- `log-fuel-consumption`: Record fuel usage
- `calculate-efficiency`: Calculate fuel efficiency
- `get-optimization-tips`: Get fuel saving recommendations
- `track-costs`: Monitor fuel costs

## 🧪 Testing

The project uses Vitest for testing. Run the test suite:

```bash
npm test
```

Test files are located in the `tests/` directory and cover:
- Contract deployment
- Function calls and responses
- Error handling
- Edge cases
- Integration scenarios

## 📊 Usage Examples

### Registering a Fleet Operator
```clarity
(contract-call? .fleet-operator-verification register-operator 
  "Fleet Corp" 
  "fleet@corp.com" 
  "License123")
```

### Adding a Vehicle
```clarity
(contract-call? .vehicle-tracking register-vehicle 
  "ABC123" 
  "Truck" 
  "Ford" 
  "F-150" 
  2023)
```

### Scheduling Maintenance
```clarity
(contract-call? .maintenance-scheduling schedule-maintenance 
  "ABC123" 
  "Oil Change" 
  u1000 
  u30)
```

## 🔐 Security Considerations

- All contracts implement proper access controls
- Input validation on all public functions
- Protection against reentrancy attacks
- Secure data storage patterns
- Multi-signature requirements for critical operations

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🆘 Support

For support and questions:
- Create an issue in the GitHub repository
- Contact the development team
- Check the documentation in the `docs/` folder

## 🗺️ Roadmap

- [ ] Mobile app integration
- [ ] Real-time dashboard
- [ ] Advanced analytics
- [ ] IoT device integration
- [ ] Multi-chain support
- [ ] API gateway implementation

---

Built with ❤️ using Stacks and Clarity
```

