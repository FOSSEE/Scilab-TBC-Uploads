clc
clear

//INPUT
t1=373;//temperature of the source in K
t2=273;//temperature of the sink in K
w=1200*10^5*980;//work done in ergs
j=4.18*10^7;//joules constant in ergs/cal

//CALCULATIONS
q=(w/j)*(t1/(t1-t2));//heat added in cal

//OUTPUT
mprintf('the heat added is %3.2f cal',q)
