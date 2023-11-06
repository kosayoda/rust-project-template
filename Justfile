project := "{{project-name}}"

export RUST_BACKTRACE := "1"
export RUST_LOG := project + "=trace"

default:
    just --list

dev *args:
    cargo run -- {{args}}

release *args:
    cargo run --release -- {{args}}

test *args:
    cargo nextest run -- {{args}}

fix:
    cargo fix -p {{project}} --allow-dirty --allow-staged
    cargo clippy --fix -p {{project}} --allow-dirty --allow-staged

fmt:
    cargo fmt

flamegraph:
    CARGO_PROFILE_RELEASE_DEBUG=true cargo flamegraph

udeps:
    cargo +nightly udeps
