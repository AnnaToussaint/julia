#using ViennaRNA to predict secondary structures

using ViennaRNA

#selecting uniq_ML=1 is required for recursive functions e.g. pbacktrack
seq_folded = FoldCompound("ATGATGATGATGATGATGATGATGATGATGATG" ; uniq_ML=1)

print(seq_folded)
