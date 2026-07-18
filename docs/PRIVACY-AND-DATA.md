# Privacy and Data

PersonalVABot follows a local-first data model.

## Local storage

Operational records are stored locally in SQLite and related application files. Stable runtime data is kept under:

```text
%APPDATA%\PersonalVABot
```

## User-controlled data

The user controls:

- client records;
- project and task records;
- attendance and DTR entries;
- billing references;
- documents and templates;
- backups and exports;
- Discord credentials used by the local installation.

## Public repository exclusions

Never upload:

- real client or employee names;
- email addresses or private contact details;
- invoices or payment records;
- attendance records;
- résumé or career-profile files;
- Discord tokens;
- `.env` files;
- SQLite databases;
- backups;
- logs containing private data;
- screenshots with identifying information.

## Diagnostics

Safe diagnostics should show application and system health without revealing credentials. Tokens must never appear in logs, screenshots, or support records.

## Uninstall behavior

Normal uninstall is designed to preserve stable local data. Users should still create a fresh backup before uninstalling, upgrading, or performing manual cleanup.

## Deletion model

Archive is the preferred default. Permanent deletion requires explicit confirmation and should be used only when the user understands that recovery may not be possible.
