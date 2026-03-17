# Welcome

bobOS is an immutable, command-line-driven educational operating system. It consists of three components:

**initland**: Allows the system to start and verify systemland.

**systemland**: Initializes the kernel and utilities.

**userland**: The user's starting point, where they can execute commands in a basic shell, depending on 
the commands allowed by the systemland modules.

## Logical Structure

```ASCII
/
├── initland
│    │
│    └── init.bin
│         arranque temprano
│         inicializa hardware básico
│         verifica systemland
│         carga kernel
│
├── systemland (READ ONLY)
│
│    ├── kernel.bin
│    │     scheduler (simple o ninguno)
│    │     memory manager
│    │     filesystem driver
│    │     process loader
│    │
│    ├── shell.bin
│    │     consola principal
│    │
│    ├── utilities
│    │     │
│    │     ├── dir.bin
│    │     ├── create.bin
│    │     ├── delete.bin
│    │     ├── move.bin
│    │     ├── copy.bin
│    │     └── pwd.bin
│    │
│    ├── drivers
│    │     │
│    │     ├── disk.drv
│    │     ├── keyboard.drv
│    │     └── display.drv
│    │
│    └── resources
│          │
│          ├── logo.bin
│          └── help.txt
│
└── userland (READ WRITE)
     │
     ├── documents/
     ├── downloads/
     └── (vacío al inicio)
```

### Minimal version

```ASCII
/
├── initland
│   └── init.bin
│
├── systemland
│   ├── kernel.bin
│   └── shell.bin
│
└── userland
```

## Supported commands

```
dir
create
delete
cd
pwd
cat
```
