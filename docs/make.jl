using temp_test
using Documenter

DocMeta.setdocmeta!(temp_test, :DocTestSetup, :(using temp_test); recursive=true)

makedocs(;
    modules=[temp_test],
    authors="yabusame <541903531@qq.com> and contributors",
    sitename="temp_test.jl",
    format=Documenter.HTML(;
        canonical="https://yabusamehoulen.github.io/temp_test.jl",
        edit_link="master",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/yabusamehoulen/temp_test.jl",
    devbranch="master",
)
