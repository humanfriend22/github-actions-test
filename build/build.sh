# /bin/bash

# aarch64-apple-darwin (Apple M1)

rustup target add aarch64-apple-darwin
cargo tauri build --target aarch64-apple-darwin 
tar czf github-actions-test-m1.app.tar.gz -C src-tauri/target/aarch64-apple-darwin/release/bundle/macos github-actions-test.app

# x86_64-apple-darwin (Intel)

cargo tauri build --target x86_64-apple-darwin 
tar czf github-actions-test-intel.app.tar.gz -C src-tauri/target/x86_64-apple-darwin/release/bundle/macos github-actions-test.app