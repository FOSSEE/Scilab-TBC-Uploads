clc;
P01=4.6; // Total head inlet pressure in bar
T01=700+273.15; // Total head inlet temperature in kelvin
P2=1.6; // Static head pressure at mean radius in bar
Dm_h=10; // Mean blade diameter/blade height
lc=0.1; // Nozzle losses coefficient
alpha_2=60; // Nozzle outlet angle in degree
Cp=1.147; // Specific heat in kJ/kg K
r=1.33; // Specific heat ratio
m=20; // Mass flow rate in kg/s
R=284.6; // characteristic gas constant in J/kg K

T_2=T01*(P2/P01)^((r-1)/r); // Isentropic temperature after expansion
T2=(lc*T01+T_2)/(1+lc); // Actual temperature after expansion
c2=sqrt(2*Cp*10^3*(T01-T2)); // Absolute velocity
// From velocity triangles
ca=c2*cosd(alpha_2);
row=P2*10^5/(R*T2); // Density of gas
A=m/(ca*row); // Area
Dm=sqrt (A*Dm_h/3.14); // Mean Diameter
h=Dm/10; // Blade height
rm=Dm/2; // Mean radius
// At root
r_root=(Dm-h)/2;
//At the tip
r_tip=(Dm+h)/2;
// Free vorte flow
ct_mean=c2*sind (alpha_2);
// At the root
ct2_root=(ct_mean*rm)/r_root;
alpha2_root=atand(ct2_root/ca);
c2_root=ct2_root/sind (alpha2_root);
T2_root=T01-c2_root^2/(2*Cp*10^3);
// At the tip
ct2_tip=ct_mean*rm/r_tip;
alpha2_tip = atand (ct2_tip/ca);
c2_tip=ct2_tip/sind(alpha2_tip);
T2_tip=T01-c2_tip^2/(2*Cp*10^3);

disp ("degree",alpha2_root,"Discharge angle at the root = ","m/s",c2_root,"Gas velocity at the root = ","K",T2_root,"Gas Temperature at the root = ","A the Root");
disp ("degree",alpha2_tip,"Discharge angle at the tip = ","m/s",c2_tip,"Gas velocity at the tip = ","K",T2_tip,"Gas Temperature at the tip = ","A the tip");
