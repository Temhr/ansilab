# ansilab
Ansible implementation for my mutable Linux systems, VMs, and containers

#
Minimal viable Ansible project for bootstrapping a system with `ansible-pull`.

---

## Repository Layout

- `README.md` - Project structure, How to's
- `ansible.cfg` - Minimal config (set roles_path, inventory, etc.)
- `local.yml` - Main playbook calling roles
- **bin/** - *Utility and helper scripts*
  - `setup-pull.sh` - Ansible bootstrap
- **inventory/** - *Targets and their configuration variables*
  - `hosts.yml` - Defines localhost and group mapping
- **roles/** - *Automation modules (by purpose)*
  - **common/** - *Base system setup*
    - **files/** - *Static files for hosts*
    - **tasks/** - *Role logic and procedures*
      - `main.yml` - Task list
      - **systemd/** - *Automated system services*
      - **users/** - *Creates and defines users*
        - `ansibot.yml` - ansibot system user

---

## Usage

Run the following command to bootstrap any new system or VM: `curl -fsSL https://raw.githubusercontent.com/Temhr/ansilab/refs/heads/main/bin/setup-pull.sh | sudo bash`

Run the following command to update systems: `ansible-pull -U https://github.com/temhr/ansilab.git`
