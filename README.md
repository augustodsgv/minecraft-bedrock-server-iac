# Minecraft Bedrock Server Infrastructure as Code (IaC)

❗This project automates the provisioning and configuration of a Minecraft Bedrock Dedicated Server using **Terraform** and **Ansible**.
It is tailored for deployment on **Magalu Cloud**, aiming to streamline server setup and management through Infrastructure as Code principles.

---

## 📌 Project Status

> ⚠️ **Note:** This project is currently working, but there are still some work to do.

---

## 🚀 Objectives

* Automate the provisioning of virtual machines and networking components on Magalu Cloud using Terraform.
* Configure and deploy the Minecraft Bedrock server using Ansible.
* Implement external block storage solutions for persistent world data.
* Set up DNS configurations for easy server access.
* Establish backup mechanisms to safeguard game data.

---

## 📂 Repository Structure

```
minecraft-bedrock-server-iac/
├── ansible/                 # Ansible playbooks and roles for server configuration
├── terraform/               # Terraform modules and configurations for infrastructure provisioning
├── .gitignore               # Specifies files and directories to be ignored by Git
├── LICENSE                  # Project license (Apache-2.0)
└── README.md                # Project documentation
```

---

## ✅ TODOs

* [x] Provision virtual machines and networking components
* [x] Deploy the Minecraft Bedrock server
* [ ] Integrate external block storage solutions
* [ ] Configure DNS settings
* [ ] Implement backup strategies

---

## 🔧 Prerequisites

* [Terraform](https://www.terraform.io/) installed on your local machine
* [Ansible](https://www.ansible.com/) installed on your local machine
* Access to a [Magalu Cloud](https://cloud.magalu.com/) account with necessary permissions
* SSH keys configured for remote access

---

## ⚙️ Usage

### 1. Clone the Repository

```bash
git clone https://github.com/augustodsgv/minecraft-bedrock-server-iac.git
cd minecraft-bedrock-server-iac
```

### 2. Terraform: Infrastructure Provisioning

```bash
cd terraform
terraform init
terraform plan
terraform apply
```

This will set up the necessary virtual machines and networking components on Magalu Cloud.

### 3. Ansible: Server Configuration

```bash
cd ../ansible
ansible-playbook -i inventory.ini playbook.yml
```

This will configure the Minecraft Bedrock server on the provisioned infrastructure.

---

## 📄 License

This project is licensed under the [Apache-2.0 License](LICENSE).

---

## 🤝 Contributing

Contributions are welcome! Please fork the repository and submit a pull request with your enhancements. For major changes, open an issue first to discuss your proposed modifications.

---

## 📩 Contact

For questions or support, please open an issue in the repository.
