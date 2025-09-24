# ansilab
ansible-pull implementation for my mutable Linux systems, VMs, and containers

---

## Repository Layout

- `README.md` - Project structure, How to's
- `ansible.cfg` - Minimal config (set roles_path, inventory, etc.)
- `local.yml` - Main playbook, assigns hosts to roles
- **bin/** - *Utility and helper scripts*
  - `setup-pull.sh` - Bootstrapping script
- **inventory/** - *Targets and their config vars*
  - `hosts.yml` - Defines hosts and groups
- **roles/** - *Automation modules (by purpose)*
  - **common/** - *Base system setup*
    - **files/** - *Static files for hosts*
    - **tasks/** - *Role logic and procedures*
      - `main.yml` - Task list
      - **systemd/** - *Automated system services*
      - **users/** - *Creates and defines users*

---

## Usage

Run the following command to bootstrap any new system or VM: `curl -fsSL https://raw.githubusercontent.com/Temhr/ansilab/refs/heads/main/bin/setup-pull.sh | sudo bash`

Run the following command to update systems: `ansible-pull -U https://github.com/temhr/ansilab.git`
