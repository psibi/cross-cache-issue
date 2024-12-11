use anyhow::bail;

fn main() {
    println!("Hello, world!");
    let t = some_logic();
    println!("Result: {t:?}");
}

fn some_logic() -> anyhow::Result<u32> {
    let number = rand::random::<u8>();
    if number > 10 {
        Ok(11)
    } else {
        bail!("Cannot be less than 10")
    }
}
