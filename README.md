# Private Settings for Debian Development environment

## 1. Hardware

### ChromeOS

I use Lenovo IdeaPad Duet Chromebook.

https://www.lenovo.com/jp/ja/notebooks/ideapad/duet-3-series/Lenovo-CT-X636/p/ZZICZCTCT1X

### Android

Android 15 QPR2+ support Linux development environment of Debian.

## 2. Prepare

```bash
sudo apt update
sudo apt install ansible git
git clone https://github.com/yasu0796/private-settings-Debian-devenv.git
```

If you can check pre. Install python3-apt.

```bash
sudo apt install python3-apt
```

## 3. Run

```bash
cd private-settings-Debian-devenv/ansible
```

Check your username.

```bash
vim hosts.yaml
```

Dry-run

```bash
sudo ansible-playbook -i hosts.yaml playbook.yaml -v --diff --check
```

Run

```bash
sudo ansible-playbook -i hosts.yaml playbook.yaml -v --diff
```

## Limitations

This playbook doesn't cointain ssh keys.

## Information

- [ansible.builtin.apt – Manages apt-packages — Ansible Documentation](https://docs.ansible.com/ansible/latest/collections/ansible/builtin/apt_module.html)
- [ansible.builtin.replace – Replace all instances of a particular string in a file using a back-referenced regular expression — Ansible Documentation](https://docs.ansible.com/ansible/latest/collections/ansible/builtin/replace_module.html)
- [ansible.builtin.apt_repository – Add and remove APT repositories — Ansible Documentation](https://docs.ansible.com/ansible/latest/collections/ansible/builtin/apt_repository_module.html#ansible-collections-ansible-builtin-apt-repository-module)
