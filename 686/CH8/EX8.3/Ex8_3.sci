clc();
clear;

// To find the heat transfer coefficient at x = 12 in.

Tp = 176;                    // Temperature of plate in F
Ta = 68;                     // Tempearture of air stream in F
Tm = (Tp+Ta)/2;              // Maen temperature in F
u = 30;                      // Velocity in fps
n = 19.45*10^-5;             // Dynamic visosity in ft^2/sec
v = 30;                      // Velocity in fps
Pr = 0.703;                  // Prandtls number
x = 12/12;                   // distance in ft
k = 0.0162;                  // Thermal conductivity in Btu/hr-ft^2-F
Re = v*x/n;                  // Reynolds number
// The boundary layer must be laminar or turbulent

St =  0.0296*(Re)^-(1/5)/(1+1.75*0.87*(Re)^-(1/10)*(Pr-1));   // Strantons number
Nu = Re*Pr*St;                            // Nusselt number
h = Nu*k/x;                               // Heat transfer coefficient  

printf("The heat transfer coefficient of heating of water for laminar is %.2f Btu/hr-ft^2-F",h)

// If the flow is laminar 
Nu1 = 0.332*Re^(1/2)*Pr^(1/3);             // Nusselt number
h1 = Nu1*k/x;                              // Heat transfer coefficient
printf(" \n The heat transfer coefficient for turbilent layer is %.2f Btu/hr",h1);

