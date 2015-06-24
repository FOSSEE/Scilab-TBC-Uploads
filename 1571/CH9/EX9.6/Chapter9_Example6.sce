clc
clear

//INPUT
t1=373;//temperature in K
t2=273;//temperature of sink in K
q=10^4;//heat taken at higher temperature in cal
j=4.2*10^7;//joules constant in ergs/cal

//CALCULATIONS
w=q*j*(t1-t2)/t1;//work done in ergs

//OUTPUT
mprintf('work done is %3.2f ergs',w)
