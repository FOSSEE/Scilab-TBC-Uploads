clear;
clc;
funcprot(0);

//given data
Z = 12;//number of vanes
delW = 230;//in kW
T01 = 1050;//stagnation temperature in K
mdot = 1;//flow rate in kg/s
eff_ts = 0.81;//total-to-static efficiency
Cp = 1.1502;//in kJ/(kg.K)
gamma = 1.333;
R = 287;//gas constant
cm3_U2 = 0.25;
nu = 0.4;
r3s_r2 = 0.7;
w3av_w2 = 2.0;
p3 = 100;//static pressure at rotor exit in kPa
zetaN = 0.06;//nozzle enthalpy loss coefficient
U2 = 538.1;//in m/s
p01 = 3.109*10^5;//in Pa

//Calculations
S = delW/(Cp*T01);
T03 = T01*(1-S);
T3 = T03 - (cm3_U2^2)*(U2^2)/(2*Cp*1000);
r2 = sqrt(mdot/((p3*1000/(R*T3))*(cm3_U2)*U2*%pi*(r3s_r2^2)*(1-nu^2)));
D2 = 2*r2;
omega = U2/r2;
N = omega*30/%pi;
ctheta2 = S*Cp*1000*T01/U2;
alpha2 = (180/%pi)*acos(sqrt(1/Z));
cm2 = ctheta2/tan(alpha2*%pi/180);
c2 = ctheta2/sin(alpha2*%pi/180);
T2 = T01 - (c2^2)/(2*Cp*1000);
p2 = p01*(1-(((c2^2)*(1+zetaN))/(2*Cp*1000*T01)))^(gamma/(gamma-1));
b2_D2 = (0.25/%pi)*(R*T2/p2)*(mdot/(cm2*r2^2));

//Results
printf('(i) The diamaeter of the rotor = %.4f m\n its speed of rotation = %.1f rad/s (N = %d rev/min)',D2,omega,N);
printf('\n(ii) The vane width to diameter ratio at rotor inlet = %.4f',b2_D2);

//there are some errors in the answers given in textbook
