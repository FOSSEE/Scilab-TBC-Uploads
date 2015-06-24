//Ex_2_17
clc;
clear;
close;
format('v',5);
//given data :
CD=10/100;BE=10/100;AF=10/100;//m
BC=8/100;ED=8/100;AB=8/100;EF=8/100;//m
BCDE=BC+CD+ED;//m
BAFE=AB+BE+EF;//m
A=2*2*10^-4;//m^2
mu_r=1200;///relative permeability
N=800;//turns
fi2=2*10^-3;//Wb
mu0=4*%pi*10^-7;//permeability of air
S2=BAFE/(mu0*mu_r*A);//Wb/m^2
S1=BE/(mu0*mu_r*A);//Wb/m^2
fi1=fi2*S2/S1;//Wb
fi=fi1+fi2;//Wb
AT2=fi*S2;//AT//for portion BAFE
AT1=fi1*S1;//AT//for portion BCDE
AT=AT1+AT2;//AT//Toal AT required
NI=AT;//AT
I=NI/N;//A
disp(I,"Magnetizing current(A)");
