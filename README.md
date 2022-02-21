# Private Settings for Chromebook Debian

## 1. Hardware

I use Lenovo IdeaPad Duet Chromebook.

https://www.lenovo.com/jp/ja/notebooks/ideapad/duet-3-series/Lenovo-CT-X636/p/ZZICZCTCT1X

## 2. Prepare

```bash
sudo apt update
sudo apt install ansible
git clone https://github.com/yasu0796/private-settings-Chromebook-Debian.git
```

If you can check pre. Install python3-apt.

```
sudo apt install python3-apt
```

## 3. Run

```bash
cd private-settings-Chromebook-Debian/ansible
sudo ansible-playbook -i hosts.yaml playbook.yaml -v
```

## Limitations

This playbook doesn't cointain ssh keys.


## Information

- [ansible.builtin.apt – Manages apt-packages — Ansible Documentation](https://docs.ansible.com/ansible/latest/collections/ansible/builtin/apt_module.html)
- [ansible.builtin.replace – Replace all instances of a particular string in a file using a back-referenced regular expression — Ansible Documentation](https://docs.ansible.com/ansible/latest/collections/ansible/builtin/replace_module.html)
