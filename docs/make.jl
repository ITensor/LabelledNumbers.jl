using LabelledNumbers: LabelledNumbers
using Documenter: Documenter, DocMeta, deploydocs, makedocs

DocMeta.setdocmeta!(
  LabelledNumbers, :DocTestSetup, :(using LabelledNumbers); recursive=true
)

include("make_index.jl")

makedocs(;
  modules=[LabelledNumbers],
  authors="ITensor developers <support@itensor.org> and contributors",
  sitename="LabelledNumbers.jl",
  format=Documenter.HTML(;
    canonical="https://itensor.github.io/LabelledNumbers.jl",
    edit_link="main",
    assets=["assets/favicon.ico", "assets/extras.css"],
  ),
  pages=["Home" => "index.md", "Reference" => "reference.md"],
)

deploydocs(;
  repo="github.com/ITensor/LabelledNumbers.jl", devbranch="main", push_preview=true
)
