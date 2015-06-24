clc;funcprot(0);//Example 8.6
//Initilisation of Variables
Th=120;.....//saturation temparature of vapour in degrees celcius
Tci=30;......//Initial temparature of cooling liquid in degrees celcius
mc=1;....//Mass flow rate of liquid in kg/s
Tco=65;......//Outer temparature of cooling liquid in degrees celcius
hfg=2200;....//Latent heat of condensation of vapour in kJ/kg
D=0.04;....//Diameter of tube in m
L=10;.....//Lemgth of the tubes in m
N=10;.....//number of tubes
Cpc=4.2;....//Specific heat of cooling liquid in kJ/kgK
//calculations
Q=mc*Cpc*(Tco-Tci);....//Heat gained cooling water in kW
LMTD=((Th-Tci)-(Th-Tco))/log((Th-Tci)/(Th-Tco));......//Log mean temparature diffrence of all fluids in K
A=%pi*D*L*N;.....//Area of tube in m^2
U=Q/(A*LMTD);....//Overall heat transfer coefficient in W/m^2C
Cmin=mc*Cpc;.....//it refers to cooling water 
NTU=(U*A)/Cmin;....//Number of transfer units
E=1-exp(-NTU);......//Effectiveness of condenser
mh=Q/hfg;.....//Rate of condensation in kg/s
disp(U*1000,"(i)Overall heat transfer coefficient in W/m^2C:")
disp(NTU,"(ii)Number of transfer units:")
disp(E,"(iii)Effectiveness of condenser:")
disp(mh,"(iv)Rate of condensation in kg/s:")
