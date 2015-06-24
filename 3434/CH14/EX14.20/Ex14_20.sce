clc
// given data

Co=300000 // cost in Rs
S=20000.0 // salvage value in Rs
N=15 // useful life

D=(Co-S)/N // Depreciation
BV=Co // Book Value
for i =1:N
    BV=BV-D;
    printf(" The Book value at the end of %i th year is Rs %.2f\n",i,BV)
end
