using BioSequences

#Find the nucleotide composition of a sequence
comp = composition(dna"ACGAG");
print(comp)

b = comp[DNA_A]
print(b)

c = comp[DNA_T]
print(c)

#create an empty composition counter
d = composition(dna"");

seqs = [randdnaseq(10) for i in 1:5]

for seq in seqs
    merge!(d, composition(seq))
end

# one line function
foldl((x, y) -> merge(x, composition(y)), seqs, init=composition(""))
#init is saying to start with a new composition

#concatenates each element in the array of sequences
foldl(*,seqs)
foldr(*,seqs)
#difference in foldl and foldr is the order of operations, foldl is l->r; foldr is r->l
#if the operation is associative, then they will both give the same result

#kmer iteration
z = composition(each(DNAMer{4}, dna"ACGT"^100));
print(e)

r= z[DNAMer("CGTA")]
print(r)
