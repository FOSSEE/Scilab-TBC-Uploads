clear;
clc;
printf('FUNDAMENTALS OF HEAT AND MASS TRANSFER \n Incropera / Dewitt / Bergman / Lavine \n EXAMPLE 6.5   Page 372 \n'); //Example 6.5
// Heat Flux to blade when surface temp is reduced
// Heat flux to a larger turbine blade

//Operating Conditions
v = 160;        //[m/s]  Velocity of air
L = 0.04;      //[m] Blade length
Tsurr = 1150+273;    //[K]
Ts = 800+273;    //[K] Surface Temp
q = 95000;        //[W/m^2] Original heat flux

//Case 1
Ts1 = 700+273;    //[K] Surface Temp
q1 = q*(Tsurr-Ts1)/(Tsurr-Ts);

//Case 2
L2 = .08;            //[m] Length
q2 = q*L/L2;        //[W/m^2] Heat flux


printf("\n\n (a) Heat Flux to blade when surface temp is reduced = %i KW/m^2 \n (b) Heat flux to a larger turbine blade = %.2f KW/m^2", q1/1000,q2/1000);
//END