clc;
patm=1; // Atmospheric pressure in bar
V1=0.0135; // Volume of Freon 12 at initial state in m^3
D=9; // Diameter of the cylinder in cm
m=90; // Mass of the piston in kg
g=9.80665; // acceleration due to gravity in m/s^2
// (a). Determination of the final pressure and volume of the system
A=%pi/4 * (D*10^-2)^2; // Area of the cylinder
p1=0.7449; // Initial pressure of saturated vapour at 30 degree celcius in MPa
v1=0.023508; // Initial specific volume of saturated vapour at 30 degree celcius in m^3/kg
p2=(patm*10^5)+(m*g)/A; // Final pressure of Freon 12
v2=0.084022; // Final specific volume from superheated table at p2 and 30 degree celcius in m^3/kg
mf=V1/v1; // Mass of Freon 12
V2=mf*v2; // Final volume of Freon 12
disp ("Pa",p2,"Final pressure = ","(a)");
disp ("m^3   (round off error)",V2,"Final volume = ");
// (b). Calculation of workdone by Freon 12 during this process
Wirrev=p2*(V2-V1);  // P dv Work done 
disp ("kJ   (round off error)",Wirrev/1000,"Work done = ","(b)");
// (c). Calculation of workdone by Freon 12 during reversible process
Wrev=p1*10^6*V1*log (V2/V1);//From reversible process relation for work done
disp ("kJ   (round off error)",Wrev/1000,"Work done in reveersible process = ","(c)");
