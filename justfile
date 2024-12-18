# List all recipes
default:
	just --list --unsorted

# Build binary (x86-musl)
cargo-compile:
	cross test --workspace --release --no-run --locked --target x86_64-unknown-linux-musl --verbose

# Cargo compile (x86-gnu)
cargo-compile-gnu:
	cross test --workspace --release --no-run --locked --target x86_64-unknown-linux-gnu --verbose
