clc;
clear;

printf("\n Example 9.27\n");

//As in Example 9.1, the heat load = 1672 kW
Q=1672;
//With reference to Figure 9.71:
T1=360;
T2=340;
theta1=300;//Temperature of cooling water entering
theta2=316;
F_theta_m=40.6;//corrected mean temperature difference
T=(T1+T2)/2;
d=1.9e-3;//Tube diameter
u=1;//Water velocity
//then, in equation 9,221:
h_i=4.28*(0.00488*T-1)*u^0.8/d^0.2;
//From Table 9.18, an estimate of the shell-side film coefficient is:
h_o=(1700+11000)/2000;
//For steel tubes of a wall thickness of 1.6 mm, the thermal resistance of the wall, from Table 9.15 is:
xw_kw=0.025;
//the thermal resistance for treated water, from Table 9.16, is 0.26 m2K/kW
Ri=0.26;
Ro=Ri;
U=((1/h_o)+xw_kw+Ri+Ro+(1/h_i))^-1;
A=Q/(F_theta_m*U);
printf("\n The heat transfer area = %.1f m^2",A);



