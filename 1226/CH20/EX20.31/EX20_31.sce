clc;funcprot(0);//EXAMPLE 20.31
// Initialisation of Variables
ps=1;.........//Suction pressure in bar
t1=273+125;.......//Delivery temperature in K
pd=160;...........//Delivery pressure in bar
tm=40+273;........//Min temperature
ts=298;........//Suction temperature in K
n=1.25;......//Adiabatic index
cv=0.71;.......//Specific heat at constant volume in kJ/kgK
R=0.287;......//Gas constant in kJ/kgK
ns=3;.......//No of stages
//Calculations
p1=ps*((t1/ts)^(n/(n-1)));
x=(log(pd/p1))/(((n/(n-1))*(log(t1/tm))));
disp(round(x)+1,"No of stages:")
rp1=p1;...........//Pressure ratio in 1st stage
rp=(pd/rp1)^(1/ns);.........//Pressure ratio in the following stage
W=(n/(n-1))*R*ts*(((rp1)^((n-1)/n))-1);.........//Work done in first stage in kJ
Wf=ns*(n/(n-1))*R*tm*(((rp)^((n-1)/n))-1);.........//Work done in next three stages in kJ
wt=W+Wf;............//Total work done per kg in kJ
disp(wt,"Total work done in kJ/kg:")
cp=cv+R;..............//Specific heat at constant pressure in kJ/kgK
Qr=ns*cp*(t1-tm);.............//Heat rejected in intercoolers in kJ/kg
disp(Qr,"Heat rejected in intercoolers in kJ/kg:")

