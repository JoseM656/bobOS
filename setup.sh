# initland
cat > initland/Cargo.toml << 'EOF'
[package]
name = "initland"
version = "0.1.0"
edition = "2024"

[[bin]]
name = "init"
path = "src/main.rs"
EOF

# kernel
cat > systemland/kernel/Cargo.toml << 'EOF'
[package]
name = "kernel"
version = "0.1.0"
edition = "2024"

[[bin]]
name = "kernel"
path = "src/main.rs"
EOF

# shell
cat > systemland/shell/Cargo.toml << 'EOF'
[package]
name = "shell"
version = "0.1.0"
edition = "2024"

[[bin]]
name = "shell"
path = "src/main.rs"
EOF

# utilidades (misma estructura para todas)
for util in dir create delete move copy pwd; do
cat > systemland/utilities/$util/Cargo.toml << EOF
[package]
name = "$util"
version = "0.1.0"
edition = "2024"

[[bin]]
name = "$util"
path = "src/main.rs"
EOF
done
