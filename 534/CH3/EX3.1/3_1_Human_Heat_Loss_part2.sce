clear;
clc;
printf('FUNDAMENTALS OF HEAT AND MASS TRANSFER \n Incropera / Dewitt / Bergman / Lavine \n EXAMPLE 3.1   Page 104 \n') //Example 3.1
// Find Skin Temperature & Aerogel Insulation Thickness 

A=1.8;    // [m^2] Area for Heat transfer i.e. both surfaces
Ti = 35+273;  //[K] - Inside Surface Temperature of Body
Tsurr = 10+273; //[K] - Temperature of surrounding
Tf = 283; //[K] - Temperature of Fluid Flow
e=.95; //  Emissivity of Surface
Lst=.003;    //[m] - Thickness of Skin
kst=.3;  //  [W/m.K] Effective Thermal Conductivity of Body
kins = .014;  //  [W/m.K] Effective Thermal Conductivity of Aerogel Insulation
hr = 5.9;    //[W/m^2.k] - Natural Thermal Convectivity from body to air
stfncnstt=5.67*10^(-8);    // [W/m^2.K^4] - Stefan Boltzmann Constant 
q = 100;          //[W] Given Heat rate

//Using Conducion Basic Eq 3.19
Rtot = (Ti-Tsurr)/q;
//Also
//Rtot=Lst/(kst*A) + Lins/(kins*A)+(h*A + hr*A)^-1
//Rtot = 1/A*(Lst/kst + Lins/kins +(1/(h+hr)))

//Thus
//For Air,
h=2;    //[W/m^2.k] - Natural Thermal Convectivity from body to air
Lins1 =  kins * (A*Rtot - Lst/kst - 1/(h+hr));

//For Water,
h=200;    //[W/m^2.k] - Natural Thermal Convectivity from body to air
Lins2 =  kins * (A*Rtot - Lst/kst - 1/(h+hr));

Tsa=305;            //[K]  Body Temperature Assumed

//Temperature of Skin is same in both cases as Heat Rate is same
//q=(kst*A*(Ti-Ts))/Lst
Ts = Ti - q*Lst/(kst*A);

//Also from eqn of effective resistance Rtot F
printf("\n\n (I) In presence of Air, Insulation Thickness = %.1f mm",Lins1*1000)

printf("\n (II) In presence of Water, Insulation Thickness = %.1f mm",Lins2*1000);
printf("\n\n  Temperature of Skin = %.2f degC",Ts-273);
//END