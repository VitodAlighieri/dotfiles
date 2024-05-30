<dl>
  <dt>WARNING</dt>
  <dd>Work in progress</dd>
</dl>

# Vito Alighieri's dotfiles

> This repository contains my personal dotfiles and a completely automated method to install and sync them using Ansible. 


## Features

- Comprehensive Dotfiles: Includes configurations for shell, editors, git, and various other tools.
- Automated Setup: Utilizes Ansible to automate the installation and synchronization of dotfiles across multiple systems.
- Cross-Platform: Designed to work on various UNIX-like systems, ensuring consistency in different environments.
- Easily Extensible: Modular playbooks allow easy addition and customization of configurations.
- Version Controlled: All changes are tracked, enabling easy rollback and version management.

## File structure

One of the objectives of these dotfiles is to make their management as easy as possible. One of the key factors to do so has been the rigorous organization, this being as standard, common and symmetrical as possible, in addition to this documentation.

The system structure is as follows:

 - `main.yml`: Entry point of the dotfiles instalation.

 - `anisble.cfg`: Ansible config file.

 - `bin`: Folder containing dotfiles script.
    - `dotfiles`: Dotfiles setup script.

 - `group_vars`: Folder containing default ansible vars.
    - `all.yml`: File including variables such as default roles.

 - `pre-tasks`: Folder containing defined ansible pre-tasks.
    - `register_host.yml`: File defining register host task.

 - `requirements`: Folder containing requirements to proceed with the dotfiles setup.
    - `arch.yml`: File with Arch Linux OS requirements.
    - `common.yml`: File with common requirements.

 - `roles`: Folder containing all individual setups. Each role can have some of this folders:
    - `tasks`: Installation tasks.
    - `files`: Configuration files.
    - `defaults`: Variable definition.

## Acknowledgements

Inspired by various dotfiles repositories and Ansible community. Special thanks to everyone who has shared their dotfiles and configurations online, in particular:
 - [TechDufus](https://github.com/TechDufus/dotfiles)

Resources of interest:
 - [Ansible Documentation](https://docs.ansible.com/)

