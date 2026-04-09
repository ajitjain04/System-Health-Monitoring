# System Health Monitor

A comprehensive shell script-based system health monitoring tool for Linux/Unix systems. This project monitors various system metrics including CPU usage, memory, disk space, network activity, running processes, and logged-in users.

## Features

- **CPU Monitoring**: Tracks CPU usage and load averages
- **Memory Monitoring**: Monitors RAM and swap usage
- **Disk Monitoring**: Checks disk space usage and I/O statistics
- **Network Monitoring**: Tracks network interface statistics
- **Process Monitoring**: Lists top resource-consuming processes
- **User Monitoring**: Shows currently logged-in users
- **Automated Logging**: Saves all monitoring data to timestamped log files
- **Scheduled Execution**: Can be set up to run periodically using cron

## Project Structure

```
SystemHealthMonitor/
├── README.md
├── log/
├── logs/
└── scripts/
    ├── main_script.sh
    ├── monitor_cpu_memory.sh
    ├── monitor_disk_network.sh
    └── monitor_process_users.sh
```

## Prerequisites

- Linux/Unix-based system (or WSL on Windows)
- Bash shell
- Standard system utilities (top, df, free, etc.)

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/ajitjain04/System-Health-Monitoring.git
   cd System-Health-Monitoring
   ```

2. Make scripts executable:
   ```bash
   chmod +x scripts/*.sh
   ```

## Usage

### Manual Execution

Run the main monitoring script:
```bash
./scripts/main_script.sh
```

This will execute all monitoring modules and generate log files in the `logs/` directory.

### Individual Scripts

You can run individual monitoring scripts:

- CPU and Memory: `./scripts/monitor_cpu_memory.sh`
- Disk and Network: `./scripts/monitor_disk_network.sh`
- Processes and Users: `./scripts/monitor_process_users.sh`

### Scheduled Monitoring

To run the monitor hourly using cron:

1. Open crontab:
   ```bash
   crontab -e
   ```

2. Add this line (replace `/path/to/SystemHealthMonitor` with actual path):
   ```bash
   0 * * * * /path/to/SystemHealthMonitor/scripts/main_script.sh
   ```

For WSL on Windows, the path would be:
```bash
0 * * * * /mnt/e/SystemHealthMonitor/scripts/main_script.sh
```

## Log Files

All monitoring data is saved to timestamped files in the `logs/` directory:
- `cpu_memory_log_YYYYMMDD_HHMMSS.txt`
- `disk_network_log_YYYYMMDD_HHMMSS.txt`
- `process_users_log_YYYYMMDD_HHMMSS.txt`

## Output Example

Each log file contains detailed system information:

```
=== CPU and Memory Report ===
Date: 2024-01-15 14:30:00
CPU Usage: 25.3%
Memory Usage: 60.2% (3.2GB used / 5.3GB total)
Swap Usage: 10.1% (0.5GB used / 4.8GB total)
Load Average: 1.25, 1.15, 1.05
```

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test thoroughly
5. Submit a pull request

## License

This project is open source. Feel free to use and modify as needed.

## Troubleshooting

- Ensure all scripts have execute permissions
- Check that required system utilities are installed
- Verify log directory permissions for writing
- For WSL users, ensure paths are correctly mapped (/mnt/e/ for E: drive)