using BioSequences

a = ["ATTCGGGGG", "AAAAT", "TTATATAG", "CGCGCGTTTAAAAAAAAA"]
println(a)
a = ["ATTCGGGGG", "AAAAT", "TTATATAG", "CGCGCGTTTAAAAAAAAA"]

c = []

for i in a
    push!(c,LongDNASeq(i))
end

println(c)

#establishing type as DNA
for i in c
    println(typeof(i))
end

d = [LongDNASeq(i) for i in a]

e = map(LongDNASeq, a)

#create a function to search for tag in sequences
function tagsearch(seq)
    contains(seq, "TAG")
end

println(tagsearch(a[3]))

filtered = filter(tagsearch, a)
println(filtered)

#using for and if statements
filtered = []
for i in a
    if tagsearch(i)
        push!(filtered, i) #push function places passing elements into the empty set, "filtered"
    end
end
print(filtered)


#anonymous function version of above
filtered = filter(seq -> contains(seq, "TAG"), a)
println(filtered)


letter = "a"
list = []
push!(list , letter^10)
println(list)


#splitting seq into nucleotides and using count function
k = "AGGGGGGGGGGGGTTTTTTTTTAGTAGCATCATCATTAGAAAAAAATTTTTTTTTTTTTTTG"
count(i -> i == "A", split(k,""))
