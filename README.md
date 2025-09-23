# ansilab
Ansible implementation for my mutable Linux systems, VMs, and containers

#
Minimal viable Ansible project for bootstrapping a system with `ansible-pull`.

---

## Repository Layout

- `README.md` - Shows project structure and how to run
- `ansible.cfg` - Minimal config (set roles_path, inventory, etc.)
- `local.yml` - Main playbook calling roles
- **bin/**
  - `setup-pull.yml` - Initial ansible-pull setup automation
- **inventory/**
  - `hosts.yml` - Define localhost and group mapping
- **roles/**
  - **common/**
    - **tasks/**
      - `main.yml` - A couple of tasks (e.g. update apt, install vim)

---

## Usage

Run the following command to bootstrap any new system or VM: `curl -fsSL https://raw.githubusercontent.com/Temhr/ansilab/refs/heads/main/bin/setup-pull.sh | sudo bash`

Run the following command to update systems: `ansible-pull -U https://github.com/temhr/ansilab.git`
