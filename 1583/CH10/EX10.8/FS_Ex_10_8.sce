clc
//Chapter 10:Frequency Synthesizers
//Example 10.8 page no 429
N=100
M=10//count
fr=10*10^3//reference frequency
fo=fr*(N+M^-1)//output frequency
mprintf('The value of output frequency is %f Hz',fo)
