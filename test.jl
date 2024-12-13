using DataFrames, DataFramesMeta, CSV
using CategoricalArrays
using CairoMakie
CairoMakie.activate!()
dclass = CSV.read("data/class19.csv", DataFrame)
transform!(dclass,
    :sex => (s -> categorical(s)),
    renamecols = false)
transform!(dclass, :sex => (x -> levelcode.(x)) => :sexi,
    :age => categorical => :agec)
println(first(dclass,5))

da0 = copy(dclass)
sort!(da0,:height)
lines(da0[:,:height], da0[:,:weight])