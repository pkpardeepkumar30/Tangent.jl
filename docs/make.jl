using Tangent
using Documenter

DocMeta.setdocmeta!(Tangent, :DocTestSetup, :(using Tangent); recursive=true)

makedocs(;
    modules=[Tangent],
    authors="Pardeep Kumar <pardeep.iitb@gmail.com> and contributors",
    sitename="Tangent.jl",
    format=Documenter.HTML(;
        canonical="https://pkpardeepkumar30.github.io/Tangent.jl",
        edit_link="master",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/pkpardeepkumar30/Tangent.jl",
    devbranch="master",
)
