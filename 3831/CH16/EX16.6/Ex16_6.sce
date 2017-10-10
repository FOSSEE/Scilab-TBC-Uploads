// Example 16_6
clc;funcprot(0);
// Given data
p_os=1.00;// MPa
T_os=20.0+273.15;// K
k=1.40;// The specific heat ratio
p=0.1013;// MPa
g_c=1;// The gravitational constant
R=286;// J/kg.K

// Solution
// (a)
p_r=p/p_os;// The pressure ratio
M=((2/(k-1))*(((p_os/p)^((k-1)/k))-1))^(1/2);// The exit Mach number
// (b)
T=(T_os/(1+(((k-1)*M^2)/2)))-273.15;// The exit temperature in °C
// (c)
V=M*sqrt(k*g_c*R*(T+273.15));// The exit velocity in m/s
// (d)
p_throat=p_os*[2/(k+1)]^(k/(k-1));// The pressure at the throat of the nozzle in MPa
// (e)
T_throat=T_os*[2/(k+1)];// The temperature at the throat of the nozzle in K
T_throat=T_throat-273.15;// The temperature at the throat of the nozzle in °C
printf("\n(a)The exit Mach number,M=%1.2f \n(b)The exit temperature,T=%3.0f°C \n(c)The exit velocity,V=%3.0f m/s \n(d)The pressure at the throat of the nozzle,p_throat=%0.3f MPa \n(e)The temperature at the throat of the nozzle,T_throat=%2.1f°C",M,T,V,p_throat,T_throat);
