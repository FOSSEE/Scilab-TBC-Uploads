// SAMPLE PROBLEM 3/31
clc;funcprot(0);
// Given data
h_1=2000;// The perigee altitude in km
h_2=4000;// The apogee altitude in km
h_c=2500;//The  altitude of the satellite in km
g=9.825;// The acceleration due to gravity in m/sec^2
R=12742/2;// km

// Calculation
// (a)
r_max=R+h_2;// km
r_min=R+h_1;// km
a=(r_min+r_max)/2;// km
v_P=(R*10^3*sqrt(g/(a*10^3))*sqrt(r_max/r_min));// m/s
v_A=(R*10^3*sqrt(g/(a*10^3))*sqrt(r_min/r_max));// m/s
// (b)
r=R+h_c;// km
v_C=sqrt((2*g*(R*10^3)^2)*((1/r)-(1/(2*a)))*(1/10^3));// m/s
// (c)
tau=(2*%pi*((a*10^3)^(3/2)))/((R*10^3)*sqrt(g));// km
tau_h=tau/3600;// km
printf("\n(a)The necessary perigee velocity,v_P=%4.0f m/s (or) %5.0f km/h \n   The necessary apogee velocity,v_A=%4.0f m/s (or) %5.0f km/h \n(b)The velocity at point C,v_C=%4.0f m/s (or) %5.0f km/h \n(c)The period of the orbit,tau=%1.3f h",v_P,v_P*3.6,v_A,v_A*3.6,v_C,v_C*3.6,tau_h);
