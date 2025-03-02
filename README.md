# 🚀 Simple Web Load Balancer with HAProxy & Vagrant  

This project shows how to create a **local load balancer** using **Vagrant**, **VirtualBox**, and **HAProxy**! 🖥️🔄🌐  

## 📂 Project Structure  
```
📦 loadbalancer-haproxy-vagrant
 ┣ 📜 Vagrantfile
 ┣ 📂 scripts
 ┃ ┣ 📜 haproxy.sh
 ┃ ┣ 📜 webserver.sh
```

## 🛠 Requirements  
- [Vagrant](https://www.vagrantup.com/downloads)  
- [VirtualBox](https://www.virtualbox.org/wiki/Downloads)  

## 🚀 How to Run  
1️⃣ Clone the repository:  
```bash
git clone https://github.com/francotel/loadbalancer-haproxy-vagrant.git
cd loadbalancer-haproxy-vagrant
```
  
2️⃣ Start the virtual machines:  
```bash
vagrant up
```

3️⃣ Open the load balancer in your browser:  
```
http://192.168.56.200/
```

4️⃣ Check HAProxy stats:  
```
http://192.168.56.200:8080/stats
```

## 🚦 Load Testing  
Test with Apache Benchmark:  
```bash
ab -n 1000 -c 50 http://192.168.56.200/
```

## ❌ Destroy Everything  
When finished, clean up:  
```bash
vagrant destroy -f
```

## 📌 More Info  
Read the full guide on **Dev.to**: [Link to Dev.to Post]  

---

✨ **Enjoy!** 🚀 If you like this project, give it a ⭐ on GitHub! 😊 