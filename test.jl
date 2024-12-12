txt = open("data/runoob-file.txt","a") do file
    read(file, String)
end
println(txt)