// Example 3_4
clc;funcprot(0);
// Given data
T=212;// °F
V=3.00;// The total volume in ft^3
m=0.200;// lbm
p=14.696;// psia
v_f=0.01672;// ft^3/lbm
v_g=26.80;// ft^3/lbm
u_f=180.1;// Btu/lbm
u_g=1077.6;// Btu/lbm
h_f=180.1;// Btu/lbm
h_g=1150.5;// Btu/lbm

// Solution
// (a)
v=V/m;// The specific volume in ft^3/lbm
// (b)
v_fg=v_g-v_f;// ft^3/lbm
x=(v-v_f)/v_fg;// The quality
x_m=1-x;// The amount of moisture present
// (c)
u_fg=u_g-u_f;// Btu/lbm
u=u_f+(x*u_fg);// The specific internal energy in Btu/lbm
// (d)
h_fg=h_g-h_f;// Btu/lbm
h=h_f+(x*h_fg);// The specific enthalpy in Btu/lbm
// (e)
m_g=x*m;// The mass of water in the vapor phase in lbm
m_f=m-m_g;// The mass of water in the liquid phase in lbm
printf('\n(a)The specific volume,v=%2.0f ft^3/lbm \n(b)The quality,x=%0.3f (or) %2.1f percentage \n   The amount of moisture present,1-x=%0.3f (or) %2.1f percentage \n(c)The specific internal energy,u=%3.0f Btu/lbm \n(d)The specific enthalpy,h=%3.0f Btu/lbm \n(e)The mass of water in the liquid and vapor phases,m_f=%0.3f lbm & m_g=%0.3f lbm',v,x,x*100,x_m,x_m*100,u,h,m_f,m_g);
