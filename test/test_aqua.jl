using LabelledNumbers: LabelledNumbers
using Aqua: Aqua
using Test: @testset

@testset "Code quality (Aqua.jl)" begin
  # TODO: fix ambiguities
  Aqua.test_all(LabelledNumbers; ambiguities=false)
end
