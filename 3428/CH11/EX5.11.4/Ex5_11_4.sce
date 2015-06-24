//Section-5,Example-4,Page no.-D.124
//To calculate the energy required for dissociation of 1 bond
clc;
B_E=95*10^3                            //Bond energy
h=6.626*10^-34
c=3*10^8
lm=2450*10^-10
E=(h*c)/lm
E_1=E*(1/4.184)                     //Energy in Calories
disp(E_1)
N_A=6.023*10^23
Ebar=B_E/N_A
disp(Ebar,'Energy required for the dissociation of one bond')
//Since E_1>Ebar,therefore the bond will be dissociated
