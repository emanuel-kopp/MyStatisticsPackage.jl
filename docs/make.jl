using MyStatisticsPackage
using Documenter

DocMeta.setdocmeta!(MyStatisticsPackage, :DocTestSetup, :(using MyStatisticsPackage); recursive=true)

makedocs(;
    modules=[MyStatisticsPackage],
    authors="emanuel-kopp <emanuel.kopp@outlook.com> and contributors",
    repo="https://github.com/emanuel-kopp/MyStatisticsPackage.jl/blob/{commit}{path}#{line}",
    sitename="MyStatisticsPackage.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://emanuel-kopp.github.io/MyStatisticsPackage.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/emanuel-kopp/MyStatisticsPackage.jl",
    devbranch="main",
)
