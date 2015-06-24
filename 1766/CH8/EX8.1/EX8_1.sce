clc;funcprot(0);//Example 8.1
//Initilisation of Variables
Tci=20;......//Inlet temparature of cooling water in degrees celcius
Tco=40;......//Outlet temparature of cooling water in degrees celcius
Thi=180;......//Inlet temparature of fluid on hot oil in degrees celcius
Tho=140;......//Outlet temparature of fluid on hot oil in degrees celcius
mc=3;....//Flow rate of water in kg/s
U=130;..........//Overall heat transfer coefficient in W/m^2C
Cph=2.1;....//Specific heat oil in kJ/kgK
Cpc=4.18;....//Specific heat oil in kJ/kgK
//calculations
mh=(mc*Cpc*(Tco-Tci))/(Cph*(Thi-Tho));.....//Mass flow rate oil in kg/s
mhh=((mc/2)*Cpc*(Tco-Tci))/(Cph*(Thi-Tho));.....//Mass flow rate oil if water flow rate is halved in kg/s
disp(mh,"Mass flow rate oil in kg/s")
disp(mhh,"Mass flow rate oil if water flow rate is halved in kg/s:")
