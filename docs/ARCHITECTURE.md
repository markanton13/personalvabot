# Architecture Overview

PersonalVABot is a local-first operations platform designed around practical virtual-assistant and remote-team workflows.

## Main layers

### Windows desktop application

The desktop application provides local access to clients, projects, tasks, attendance, billing references, documents, templates, backups, diagnostics, and preferences.

### Discord integration

Discord acts as an optional companion interface for task capture, workspace interaction, and operational commands.

### Local data layer

Application records are stored in a local SQLite database. Stable runtime data is kept under:

```text
%APPDATA%\PersonalVABot
```

### Scheduler and recurring work

The system supports recurring tasks and reminders while preserving local ownership of the operational data.

### Backup, restore, and export

Backup and recovery are first-class product workflows. Users can create backups, inspect backup freshness, restore supported data, and export operational records.

### Safety and lifecycle controls

Archive is the default removal path. Permanent deletion requires stronger confirmation and is designed to reduce accidental data loss.

## Public/private boundary

This repository does not contain:

- the complete application source;
- credentials;
- databases;
- production or client records;
- backups;
- internal logs;
- private build scripts.

The public repository exists to document the product, validation scope, installation process, and released binaries.
