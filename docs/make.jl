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
    canonical="https://ITensor.github.io/LabelledNumbers.jl",
    edit_link="main",
    assets=String[],
  ),
  pages=["Home" => "index.md"],
)

deploydocs(;
  repo="github.com/ITensor/LabelledNumbers.jl", devbranch="main", push_preview=true
)
