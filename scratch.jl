#Constructing sequences from strings

using BioSequences

seq1 = LongDNASeq("TTANC") #LongDNASeq used for ambiguous sequences, stores in 4-bit
println(seq1)

seq2 = LongDNASeq("TTTTT")
println(seq2)

seq3 = LongDNASeq(seq1, seq2)
println(seq3)

seq4 = LongSequence{DNAAlphabet{2}}("TTAGC") #DNAALphabet{2} used for unambiguous sequences, stores in 2-bit
println(seq4)

seq5 = LongRNASeq("UUANC")
println(seq5)

seq6 = DNAMer{8}("ATCGATCT") #note, this is not type-stable
println(seq6)

seq7 = RNAMer(LongRNASeq("AUCGAUCG"))
println(seq7)

seq8 = ReferenceSequence("NNCGTATTTTCN")
println(seq8)

#Constructing sequences from arrays of BioSymbols

a = LongDNASeq([DNA_T, DNA_T, DNA_A, DNA_N, DNA_C])
println(a)


#Constructing sequences from other sequences
b = LongDNASeq(LongDNASeq("ACGT"), LongDNASeq("NNNN"), LongDNASeq("TGCA"))
println(b)


#Conversion of sequence types
dna = dna"TTANGTAGACCG"
println(dna)

rna = convert(LongRNASeq,dna)
println(rna)

c = dna.data === rna.data #is underlying data the same?
println(c)

#Convert sequences into arrays and strings
dna = dna"TTANGTAGACCG"

dnastr = convert(String, dna)

arr = String[dna]
