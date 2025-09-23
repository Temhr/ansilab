# ansilab
Ansible implementation for my mutable Linux systems, VMs, and containers

#
Minimal viable Ansible project for bootstrapping a system with `ansible-pull`.

---

## Repository Layout

- `README.md` - Shows project structure and how to run
- `ansible.cfg` - Minimal config (set roles_path, inventory, etc.)
- `site.yml` - Main playbook calling roles
- **inventory/**
  - `hosts.yml` - Define localhost and group mapping
- **roles/**
  - **common/**
    - **tasks/**
      - `main.yml` - A couple of tasks (e.g. update apt, install vim)

---

## Usage

Run the following command on any new system or VM:

```bash
ansible-pull -U https://github.com/temhr/ansilab.git
