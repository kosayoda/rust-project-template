use color_eyre::Result;

fn main() -> Result<()> {
    {{project-name}}::setup()?;

    tracing::debug!("Debug logging enabled.");
    tracing::info!("Hello {{project-name}}");

    Ok(())
}
