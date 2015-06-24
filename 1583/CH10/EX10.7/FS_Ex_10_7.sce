clc
//Chapter 10:Frequency Synthesizers
//Example 10.7 page no 429
N=4
M=1.8//count
fr=100*10^3//reference frequency
fo=fr*(N+M^-1)//output frequency
mprintf('The value of output frequency is %3.2e Hz',fo)
