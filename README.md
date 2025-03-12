# Shell Scripts Collection

This repository contains 22 essential shell scripts for automation, system administration, DevOps, and cloud operations.

---

## 1. File Backup Script  
Automates full and incremental backups.
```bash
#!/bin/bash
src_dir="/path/to/source"
backup_dir="/path/to/backup"
timestamp=$(date +%Y%m%d_%H%M%S)
backup_file="$backup_dir/backup_full_$timestamp.tar.gz"
tar -czf $backup_file $src_dir
echo "Full backup completed: $backup_file"
```

---

## 2. System Monitoring Script  
Monitors CPU and memory usage.
```bash
#!/bin/bash
cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8}')
memory_usage=$(free | awk '/Mem:/ {printf "%.2f", $3/$2 * 100.0}')
echo "CPU Usage: $cpu_usage%"
echo "Memory Usage: $memory_usage%"
```

---

## 3. User Account Management Script  
Adds or removes users.
```bash
#!/bin/bash
if [ "$2" == "add" ]; then
    sudo useradd -m $1 && echo "User $1 added."
elif [ "$2" == "remove" ]; then
    sudo userdel -r $1 && echo "User $1 removed."
else
    echo "Usage: $0 <username> <add|remove>"
fi
```

---

## 4. Log Analyzer Script  
Extracts critical errors from logs.
```bash
#!/bin/bash
log_file="/path/to/logfile.log"
output_file="critical_errors.log"
grep -i "error" $log_file > $output_file
echo "Critical errors saved to $output_file"
```

---

## 5. Password Generator Script  
Generates random passwords.
```bash
#!/bin/bash
length=${1:-12}
tr -dc 'A-Za-z0-9!@#$%^&*()_+=' < /dev/urandom | head -c $length
```

---

## 6. Automated Software Installation Script  
Installs essential software.
```bash
#!/bin/bash
for software in git vim curl; do
    sudo apt install -y $software && echo "$software installed."
done
```

---

## 7. Network Connectivity Checker Script  
Checks internet connectivity.
```bash
#!/bin/bash
ping -c 1 google.com &> /dev/null && echo "Internet is working." || echo "No connectivity."
```

---

## 8. File Encryption/Decryption Script  
Encrypts or decrypts files.
```bash
#!/bin/bash
if [ "$1" == "encrypt" ]; then
    openssl enc -aes-256-cbc -salt -in $2 -out $3
elif [ "$1" == "decrypt" ]; then
    openssl enc -aes-256-cbc -d -in $2 -out $3
else
    echo "Usage: $0 <encrypt/decrypt> <file> <output>"
fi
```

---

## 9. Data Cleanup Script  
Removes old temporary files.
```bash
#!/bin/bash
find /tmp -type f -atime +7 -exec rm -f {} \;
echo "Old temp files cleaned."
```

---

## 10. Website Uptime Checker Script  
Monitors website status.
```bash
#!/bin/bash
url="https://example.com"
curl -s --head $url | grep "200 OK" &> /dev/null && echo "$url is up." || echo "$url is down."
```

---

## 11. System Information Script  
Displays system details.
```bash
#!/bin/bash
echo "System Info:"; uname -a
echo "CPU Info:"; lscpu | head -n 10
echo "Memory Info:"; free -h
echo "Disk Info:"; df -h
```

---

## 12. Task Scheduler Script  
Schedules a daily backup.
```bash
#!/bin/bash
(crontab -l; echo "0 3 * * * /path/to/backup.sh") | crontab -
echo "Backup scheduled at 3 AM daily."
```

---

## 13. Disk Space Monitoring Script  
Alerts on low disk space.
```bash
#!/bin/bash
df -h | awk '$5 >= 80 {print "Warning: "$6" is "$5" full!"}'
```

---

## 14. Cloud Automation Scripts  
### Create an S3 Bucket
```bash
aws s3 mb s3://my-bucket-$(date +%s) --region us-east-1
```
### Upload Files to S3
```bash
aws s3 cp /path/to/file s3://my-bucket/
```
### Launch EC2 Instance
```bash
aws ec2 run-instances --image-id ami-12345678 --count 1 --instance-type t2.micro
```

---

## 15. Kubernetes Automation Scripts  
### List All Pods
```bash
kubectl get pods -n default
```
### Deploy a Manifest
```bash
kubectl apply -f /path/to/manifest.yaml
```
### Check Pod Logs
```bash
kubectl logs my-pod
```
### Scale a Deployment
```bash
kubectl scale deployment my-deployment --replicas=3
```

---

## 16. CI/CD Automation Scripts  
### Build and Push Docker Image
```bash
docker build -t my-app:latest . && docker push my-docker-repo/my-app:latest
```
### Trigger Jenkins Job
```bash
curl -X POST http://jenkins/job/my-job/build --user "user:token"
```

---

## 17. Monitoring and Troubleshooting Scripts  
### Monitor CPU & Memory Usage
```bash
top -b -n1 | head -n 20
```
### Check Disk Space
```bash
df -h
```

---

## 18. Infrastructure as Code (IaC) Automation  
### Deploy Terraform Infrastructure
```bash
terraform init && terraform apply -auto-approve
```
### Destroy Terraform Infrastructure
```bash
terraform destroy -auto-approve
```

---

## 19. Cloud Networking Automation  
### Create a Security Group
```bash
aws ec2 create-security-group --group-name my-sg --description "My Security Group"
```

---

## 20. Backup and Recovery Automation  
### Backup a Directory
```bash
tar -czf /backup/backup_$(date +%Y%m%d).tar.gz /path/to/data
```

---

## 21. Logging and Auditing Scripts  
### Analyze System Logs
```bash
grep "ERROR" /var/log/syslog | tail -n 20
```

---

## 22. Miscellaneous Scripts  
### Clean Old Files
```bash
find /directory -type f -mtime +30 -exec rm {} \;
```
### Check Service Status
```bash
systemctl is-active nginx && echo "Nginx is running" || echo "Nginx is down"
```

---

## License
MIT License


