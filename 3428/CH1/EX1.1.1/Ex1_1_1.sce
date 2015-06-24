//Section-1,Example-1,Page no.-AC.33
// To caculate number average molecular mass(Mn_bar) and weight average molecular mass(Mw_bar) 
clc;
W_1=10
W_2=90
M_1=10000
M_2=100000
W=W1+W2            //weight of 2 constituents 
N_1=10/10000       //no.of moles of N1
N_2=90/100000      //no.of moles of N2
Mn_bar=(W_1+W_2)/(N_1+N_2)
disp(Mn_bar,'number average molecular mass')
Mw_bar=((N_1*M_1^2)+(N_2*M_2^2))/((N_1*M_1)+(N_2*M_2))
disp(Mw_bar,'weight average molecular mass')
