

clear;
clc;

printf("\t Example 11.10\n");
T1=303;          // isothermal temp.,K
v=5;    //air speed,m/s
l=0.05;    //length of naphthalene model that is flat, m
Mnap=128.2;        //molar mass of naphthalene,kg/kmol
D=0.86*10^-5;    //diffusion coefficient of naphthalene in air,m/s

Pv=10^(11.45-3729.3/T1)*133.31;    //vapor pressure, Pa
xn=Pv/101325;    //mole fraction  of naphthalene
mn=xn*Mnap/(xn*Mnap+(1-xn)*28.96);    //mass fraction of naphthalene
mnp=0;    //mass fraction of naphthalene in free stream is 0

Rel=v*l/(1.867*10^-5);        //reynolds no.
Sc=1.867*10^-5/D;    //schimidt no.
Nul=0.664*Rel^0.5*Sc^1/3;    //mass transfer nusselt no.
Gmn=D*Nul*1.166/l;    //gas phase mass transfer coefficient,kg/(m^2*s)
n=Gmn*(mn-mnp)+0.0000071;    //average mass flux,kg/(m^2*s)

printf("\t average rate of loss of naphthalene from a part of model is :%-4e kg/(m^2*s) or 58 g/(m^2*h)\n",n);
printf("\t naphthalene sublimatin can be used to infer heat transfer coefficient by measuring the loss of naphthalene from a model over some length of time.since the schimidt no. of naphthalene is not generally equal to prandtl no. under the conditions of interest, some assumption about the dependence of nusselt no. on the prandtl no must usually be introduced.")
//end