clc;funcprot(0);//Example 8.8
//Initilisation of Variables
mh=10;....//Mass flow rate of water in kg/s
L=6.7;.....//Lemgth of the tubes in m
Do=0.026;....//Diameter of tube in m
hi=470;....//Inside heat transfer coefficient in W/m^2 K
ho=210;.....//Outside heat transfer coefficient in W/m^2 K
Tci=15;......//Inlet temparature of air in degrees celcius
mc=1.6;....//Mass flow rate of water in kg/s
Thi=75;......//Inlet temparature of water in degrees celcius
Cph=4.2;....//Specific heat of water in kJ/kgK
Cpc=1;....//Specific heat of air in kJ/kgK 
//calculations
Ch=mh*Cph;....//Heat capacity of hot fluid by counter flow kW/K
Cc=mc*Cpc;....//Heat capacity of cold fluid by counter flow kW/K
R=Cc/Ch;.....//Resistance
A=%pi*Do*L;.....//Area of tube in m^2
U=(hi*ho)/(ho+hi);.....//Overall heat transfer coefficient in W/m^2C
NTU=(U*A)/(Cc*1000);....//Number of transfer units
disp("From the chart NTU and E the Effectiveness(E) is 0.1")
