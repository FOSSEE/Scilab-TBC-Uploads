clc
clear

//INPUT
t1=273;//temperature of the source in K
t2=290;//temperature of the sink in K
l=8*10^11;//latent of fusion in ergs/cal

//CALCULATIONS
n=(t2-t1)/t1;//efficiency of the engine
w=n*l;//energy to be supplied in ergs

//OUTPUT
mprintf('efficiency of the engine is %3.2f \n energy to be supplied is %3.2f ergs',n,w)
