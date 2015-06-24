clc
clear
//Input data
t=25;//The temperature of the air entering the diesel engine in degree centigrade 
T=600;//The temperature at which the products are released in K
Ta=200;//Theoretical air used in percentage 
Q=-93;//Heat loss from the engine in MJ/kmol fuel
f=1;//The fuel rate in kmol/h

//Calculations 
hfr=-290.97;//The enthalpy of C12H26 for the given conditions in the reactants side in MJ/kmol
h1=-393.52;//Enthalpy of carbondioxide at formation state in MJ/kmol
h11=12.916;//The change in enthalpy for the given temp of CO2 in MJ/kmol
hfc=h1+h11;//The enthalpy of the carbondioxide in MJ/kmol
h2=-241.82;//The enthalpy of water at formation state in MJ/kmol
h22=10.498;//The change in enthalpy for the given temp of water in MJ/kmol
hfh=h2+h22;//The enthalpy of the water in MJ/kmol
h3=0;//Enthalpy of the oxygen gas 
h33=9.247;//The change in enthalpy for the given temp of oxygen in MJ/kmol
hfo=h3+h33;//The enthalpy of oxygen in MJ/kmol
h4=0;//The enthalpy of the nitrogen gas
h44=8.891;//The change in enthalpy of the nitrogen for the given temp in MJ/kmol
hfn=h4+h44;//The enthalpy of nitrogen in MJ/kmol
hfp=(12*hfc)+(13*hfh)+(18.5*hfo)+(139.12*hfn);//The total enthalpy on the products side in MJ/kmol
W=Q+hfr-hfp;//The work in MJ/kmol fuel
W1=(f*W*10^3)/3600;//The work in kW

//Output
printf('The work for a fuel rate of 1 kmol/h is %3.1f kW',W1)
