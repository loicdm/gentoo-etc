# loicdm's gentoo etc config managed by etckeeper

## Instructions

To enable auto commit and push on a daily basis run :
```sh
systemctl enable etckeeper.timer
```

To force a push now run :
```sh
systemctl start etckeeper.service
```

