//Exa 3.3
clc;
clear;
close;
//Given data :
t=2600;//hour
Con_Cost=3;//Rs/kg(conductor cost)
R=1.78*10^-8;//ohm-m
D=6200;//kg/m^3
E_Cost=10/100;//Rs/unit(energy cost)
i=12;//%(interest and depreciation)
a=poly(0,'a');//mm^2    ////cross sectional area
W=a*1000*D/1000/1000;//kg/km(Weight of conductor of 1km length)
cost=Con_Cost*W;//Rs./km(cost of conductor of 1km length)
In_Dep=cost*i/100;//Rs(Annual interest and depreciation per conductor per km)
In_DepBYa=In_Dep/a;
I=poly(0,'I');//A
E_lost_aBY_Isqr=R*1000/10^-6*t/1000;//Energy lost/annum/km/conductor
E_lost_cost_aBY_Isqr=E_Cost*E_lost_aBY_Isqr;//Rs/annum
//In_Dep=E_lost_cost;//For most economical cross section
IBYa=sqrt(coeff(numer(In_DepBYa)/numer(E_lost_cost_aBY_Isqr)));//cm^2
disp(IBYa,"Best current density in A/mm^2 : ");
//Answer in the textbook is not accurate.
