clear;
clc;

// Illustration 7.15
// Page: 267

printf('Illustration 7.15 - Page: 267\n\n');

// solution

//***Data***//
w = 0.75;// [m]
OD = 19.05/1000;// [m]
l = 3.75;// [m]
n = 20;
t = 1.65/1000;// [m]
Ws = 2.3;// [kg/s]
Wal = 10;// [kg/s]
Wt = 4;// [kg/s]
Density = 800;// [kg/cubic m]
viscocity = 0.005;// [kg/m.s]
K = 0.1436;// [W/m.K]
Ct = 2010;// [J/kg.K]
Cal = 4187;// [J/kg.K]
Y1_prime = 0.01;// [kg H2O/kg dry air]
Y2_prime = 0.06;// [kg H2O/kg dry air]
TempT = 95;// [OC]
//*****//

Free_area = (w-(n*OD))*l;// [square m]
Gs_min = 2.3/Free_area;// [kg/square m.s]
Yav_prime = (Y1_prime+Y2_prime)/2;// [kg H2O/kg dry air]
// From Eqn. 7.86:
ky = 0.0493*(Gs_min*(1+Yav_prime))^0.905;// [kg/square m.s.delta_Y_prime]
// From Fig. 7.5:
H1_prime = 56000;// [J/kg]
Ao = 400*%pi*OD*l;// [square m]
// Cooling water is distributed over 40 tubes & since tubes are staggered
geta = Wal/(40*2*l);// [kg/m.s]
geta_by_OD = geta/OD;// [kg/square m.s]
// Assume:
TempL = 28;// [OC]
// From Eqn. 7.84:
hL_prime = (982+(15.58*TempL))*(geta_by_OD^(1/3));// [W/square m.K]
// From Eqn. 7.85:
hL_dprime = 11360;// [W/square m.K]
// From Fig. 7.5 (Pg 232)
m = 5000;// [J/kg.K]
Ky = 1/((1/ky)+(m/hL_dprime));
ID = (OD-(2*t));// [m]
Ai = %pi*(ID^2)/4;// [square m]
Gt_prime = Wt/(n*Ai);// [kg/square m.s]
Re = ID*Gt_prime/viscocity;
Pr = Ct*viscocity/K;
// From a standard correlation:
hT = 364;// [W/square m.K]
Dav = (ID+OD)/2;// [m]
Zm = (OD-ID)/2;// [m]
Km = 112.5;// [W/m.K]
// From Eqn. 7.67:
Uo = 1/((OD/(ID*hT))+((OD/Dav)*(Zm/Km))+(1/hL_prime));// [W/square m.K]
// From Eqn. 7.75:
alpha1 = -(((Uo*Ao)/(Wt*Ct))+((Uo*Ao)/(Wal*Cal)));
alpha2 = m*Uo*Ao/(Wt*Ct);
// From Eqn. 7.76:
beeta1 = Ky*Ao/(Wal*Cal);
beeta2 = -((m*Ky*Ao/(Wal*Cal))-(Ky*Ao/Ws));
y = deff('[y] = f26(r)','y = (r^2)+((alpha1+beeta2)*r)+((alpha1*beeta2)-(alpha2*beeta1))');
r1 = fsolve(10,f26);
r2 = fsolve(0,f26);
beeta2 = 1.402;
// From Eqn. 7.83:
// N1-(M1*(r1+alpha1)/beeta1) = 0............................................(1)
// N2-(M2*(r2+alpha2)/beeta2) = 0............................................(2)
// From Eqn. 7.77:
// At the top:
x1 = 1;
// TempL2+(M1*exp(r1*x1))+(M2*exp(-(r2*x1))) = TempL.........................(3)
// From Eqn. 7.78:
// At the bottom:
x2 = 0;
// H1_star-N1-N2 = H1_prime..................................................(4)
// From Eqn. 7.80:
// ((M1/r1)*(exp(r1)-1))+((M2*r2)*(exp(r2)-1)) = (Tempt-TempL)...............(5)
// From Eqn. 7.81:
// ((N1/r1)*(exp(r1)-1))+((N2*r2)*(exp(r2)-1)) = (H1_star-H1_prime)..........(6)
// From Eqn. 7.91 & Eqn. 7.92:
// Uo*Ao*(TempT-TempL)=Ky*Ao*(H1_star-H1_prime)..............................(7)

// Elimination of M's & N's by solving Eqn. (1) to (4) and (7) simultaneously:
// and from Fig. 7.5 (Pg 232):
TempL1=28;// [OC]
H1_star=(Uo*Ao*(TempT-TempL)/(Ky*Ao))+H1_prime;// [J/kmol]
// Solving (1) to (4) simultaneously:
a = [1 -(r1+alpha1)/beeta1 0 0;0 0 1 -(r2+alpha1)/beeta1;0 exp(r1*x1) 0 exp(r2*x1);1 0 1 0];
b = [0;0;TempT-TempL1;H1_star-H1_prime];
soln = a\b;
N1 = soln(1);
M1 = soln(2);
N2 = soln(3);
M2 = soln(4);
// By Eqn. 5
delta_Temp = ((M1/r1)*(exp(r1)-1))+((M2*r2)*(exp(r2)-1));// [OC]
Q = Uo*delta_Temp*Ao;
TempT1 = TempT-(Q/(Wt*Ct));// [OC]
H2_prime = Q/(Ws)+H1_prime;// [J/kg]
printf("Temparature to which oil was cooled: %f OC\n",TempT1);