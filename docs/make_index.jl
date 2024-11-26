using Literate: Literate
using LabelledNumbers: LabelledNumbers

Literate.markdown(
  joinpath(pkgdir(LabelledNumbers), "examples", "README.jl"),
  joinpath(pkgdir(LabelledNumbers), "docs", "src");
  flavor=Literate.DocumenterFlavor(),
  name="index",
)
