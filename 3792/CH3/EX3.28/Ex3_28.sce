// SAMPLE PROBLEM 3/28
clc;funcprot(0);
// Given data
m=800;// kg
g=9.81;// m/s^2
h=2;// m
m_p=2400;// kg
h_1=0.1;// m

// Calculation
v_r=sqrt(2*g*h);// m/s
v_ra=sqrt(2*g*h_1);// m/s
// (a)
v_pa=(((m*v_r)+0)+(m*v_ra))/m_p;// m/s
// (b)
e=(v_pa+v_ra)/(v_r+0);// The coefficient of restitution
// (c)
T=m*g*h;// J
T_a=((m*v_ra**2)/2)+((m_p*v_pa**2)/2);// J
E_l=((T-T_a)/T)*100;// The percentage loss of energy(%)
printf("\n(a)The velocity of the pile immediately after impact,v_p=%1.2f m/s \n(b)The coefficient of restitution,e=%0.3f \n(c)The percentage loss of energy due to the impact is %2.1f percentage.",v_pa,e,E_l);
