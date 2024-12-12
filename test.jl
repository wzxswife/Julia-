using DataFrames
da0 = DataFrame(
    name=["a", "b", "c", "d"], 
    age=[33, 42, missing, 51],
    sex=["M", "F", "M", "M"])
da1 = copy(da0)
ismissing.(da1[!,:age])|>show