clc
//Chapter 10:Frequency Synthesizers
//Example 10.5 page no 426
fr=100*10^3//reference frequency
f=10*10^6//given frequency
fi=1*10^3//increment in frequency
fo=fr*f/fi//required VCO operating frequency
mprintf('The value of VCO operating frequency is %3.2e Hz',fo)
