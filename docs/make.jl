using Documenter, Juno

makedocs(
    modules = [Juno],
    doctest = false,
    clean = true,
    format = Documenter.HTML(
        prettyurls = get(ENV, "CI", nothing) == "true",
        canonical = "http://docs.junolab.org/stable/"
    ),
    sitename = "Juno Documentation",
    linkcheck = !("skiplinks" in ARGS),
    pages = [
        "Home" => "index.md",
        "Manual" => Any[
            "man/installation.md",
            "man/basic_usage.md",
            "man/debugging.md",
            "man/remote.md",
            "man/juno_frontend.md",
            "man/info_developer.md",
            "man/update.md",
            "man/faq.md",
        ],
        "Developer Documentation" => Any[
            "devdocs/contributor_guide.md",
            "devdocs/dev_install.md",
            "devdocs/ecosystem.md",
            "devdocs/test_suites.md",
            "devdocs/communication.md",
        ]
    ]
)

deploydocs(
   repo = "github.com/JunoLab/JunoDocs.jl.git",
   push_preview = true,
)
