clear;
clc;
printf('FUNDAMENTALS OF HEAT AND MASS TRANSFER \n Incropera / Dewitt / Bergman / Lavine \n EXAMPLE 1.6   Page 26 ')// Example 1.6
// Find Skin Temperature & Heat loss rate

A=1.8;    // [m^2] Area for Heat transfer i.e. both surfaces
Ti = 35+273;  //[K] - Inside Surface Temperature of Body
Tsurr = 297; //[K] - Temperature of surrounding
Tf = 297; //[K] - Temperature of Fluid Flow
e=.95; //  Emissivity of Surface
L=.003;    //[m] - Thickness of Skin
k=.3;  //  Effective Thermal Conductivity
h=2;    //[W/m^2.k] - Natural Thermal Convectivity from body to air
stfncnstt=5.67*10^(-8);    // [W/m^2.K^4] - Stefan Boltzmann Constant 
//Using Eq 1.5

Tsa=305;            //[K]  Body Temperature Assumed

i=-1;
while(i==-1)
   hr = e*stfncnstt*(Tsa+Tsurr)*(Tsa^2+Tsurr^2);    //[W/m^2.K] - Radiative Heat transfer Coeff on assumption
   
   //Using Eq 1.8 & Eq 1.9 k(Ti-Ts)/L = h(Ts - Tf) + hr(Ts - Tsurr)
Ts = (k*Ti/L + (h+hr)*Tf)/(k/L +(h+hr));
   c=abs(Ts-Tsa);
   if(c<=0.0001)
     i=1;
     break;
   end
   Tsa=Ts;
end

q = k*A*(Ti-Ts)/L;          //[W] 

printf("\n\n (I) In presence of Air")
printf("\n (a) Temperature of Skin = %.2f K",Ts);
printf("\n (b) Total Heat Loss = %.2f W",q);

//When person is in Water
h = 200;    //[W/m^2.k] - Thermal Convectivity from body to water
hr = 0;    // As Water is Opaque for Thermal Radiation
Ts = (k*Ti/L + (h+hr)*Tf)/(k/L +(h+hr));   //[K]  Body Temperature 
q = k*A*(Ti-Ts)/L;          //[W] 
printf("\n\n (II) In presence of Water")
printf("\n (a) Temperature of Skin = %.2f K",Ts);
printf("\n (b) Total Heat Loss = %.2f W",q);

//END