clc;
N=6000; // Speed in rpm
Del_rise=20; // Stagnation temperature rise in kelvin
wf=0.93; // Work done factor eff_c=0.89; // Isentropic efficiency of the state 
c1=140; // Inlet velocity in m/s
p01=1.01; // Ambient pressure in bar
T01=288; // Ambient temperature in kelvin
M1=0.95; // Mach number
Cp=1.005; // Specific heat in J/kg K
r=1.4; // Specific heat ratio
R=287; // Characteristic gas constant in J/kg K
H_T_ratio=0.6; // Hub tip ratio in 
eff_s=0.89; // Stage efficiency
T1=T01-c1^2/(2*Cp*10^3);
w1=M1*sqrt (r*R*T1);
beta_1=acosd (c1/w1);
u=w1*sind (beta_1);
beta_2=atand (tand(beta_1)-((Cp*10^3*Del_rise)/(u*wf*c1)));
p1=p01/(T01/T1)^(r/(r-1));
row_1=(p1*10^5)/(R*T1);
Rtip=60*u/(2*3.14*N);
Rroot=H_T_ratio*Rtip;
Rm=(Rtip+Rroot)/2;
h=Rtip-Rroot;
m=row_1*2*3.14*Rm*h*c1;
rp=(1+(eff_s*Del_rise)/(T01))^(r/(r-1));
P=m*Cp*Del_rise;
uroot=2*3.14*Rroot*N/60;
beta_1root=atand (uroot/c1);
beta_2root=atand (tand (beta_1root)-((Cp*10^3*Del_rise)/(wf*uroot*c1)));

disp ("degree",beta_2,"beta 2 = ","degree",beta_1,"beta 1 = ","Rotor air angles at tip:","m",Rtip,"Tip Radius = ","(i). ");
disp ("kg/s   (Roundoff error)",m,"Mass flow rate = ","(ii).");
disp ("kW",P,"Power input = ",rp,"Stagnation pressure ratio = ","(iii).");
disp ("degree",beta_2root,"beta 2 = ","degree",beta_1root,"beta 1 = ","Rotor air angles at root sections","(iv).");

