# List all recipes
default:
	just --list --unsorted

# Build binary (x86)
cargo-compile:
	cargo test --workspace --release --no-run --locked --target x86_64-unknown-linux-musl

# Cargo compile (ARM64)
cargo-compile-arm:
	cross test --workspace --release --no-run --locked --target aarch64-unknown-linux-musl --verbose
