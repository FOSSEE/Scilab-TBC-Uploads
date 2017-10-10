clear;
clc;
printf('FUNDAMENTALS OF HEAT AND MASS TRANSFER \n Incropera / Dewitt / Bergman / Lavine \n EXAMPLE 3.11   Page 158 \n'); //Example 3.11
// Study of Fuel-cell fan system

Wc =.05;    //[m] width
H = .026;   //[m] height
tc = .006;  //[m] thickness of cell
V = 9.4;    //[m/sec] vel of cooling air
P = 9;      //[W] Power generated
C = 1000;    //[W/(m^3/s)] Ratio of fan power consumption to vol flow rate
k = 200;    //[W/m.K] alumunium
Tsurr = 25+273.15;    //[K] Temperature of surrounding air
Tc = 56.4+273.15;    //[K] Temp of fuel cell
Rtcy = 10^-3;        //[K/W]   Contact thermal resistance
tb = .002;           //[m] thickness of base of heat sink
Lc = .05;        //[m] length of fuel cell
//Dimensions of Fin
tf = .001;    //[m] Thickness
Lf = .008;     //[m] Length

Vf = V*[Wc*(H-tc)];    //[m^3/sec] Volumetric flow rate
Pnet = P - C*Vf;


P = 2*(Lc+tf);
Ac = Lc*tf;
N = 22;
a=(2*Wc - N*tf)/N;
h = 19.1;            ///[W/m^2.K]
q = 11.25;            //[W]
m = (h*P/(k*Ac))^.5;
Rtf = (h*P*k*Ac)^(-.5)/ tanh(m*Lf);
Rtc = Rtcy/(2*Lc*Wc);
Rtbase = tb/(2*k*Lc*Wc);
Rtb = 1/[h*(2*Wc-N*tf)*Lc];
Rtfn = Rtf/N;
Requiv = [Rtb^-1 + Rtfn^-1]^-1;
Rtot = Rtc + Rtbase + Requiv;

Tc2 = Tsurr +q*(Rtot);

printf("\n\n (a) Power consumed by fan is more than the generated power of fuel cell, and hence system cannot produce net power = %.2f W \n\n (b) Actual fuel cell Temp is close enough to %.1f degC for reducing the fan power consumption by half ie Pnet = %.1f W, we require 22 fins, 11 on top and 11 on bottom.",Pnet, Tc2-273, C*Vf/2);

//END