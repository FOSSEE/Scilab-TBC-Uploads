// Example 9_4
clc;funcprot(0);
// Given data
m=0.100;// lbm/s
// Station 1
x_1=0.00;// The quality of steam at inlet
T_1=100;// °F
// Station 2
x_2=0.530;// The quality of steam at exit
T_2=20;// °F
T_b=60.0;// °F

// Calculation
// (a)
// From Table C.7a for R-134a, we find
h_f1=44.23;// Btu/lbm
h_1=h_f1;// Btu/lbm
s_f1=0.0898;// Btu/(lbm.R)
s_1=s_f1;// Btu/(lbm.R)
h_f2=17.74;// Btu/lbm
h_fg2=86.87;// Btu/lbm
s_f2=0.0393;// Btu/(lbm.R)
s_fg2=0.2206-s_f2;// Btu/(lbm.R)
h_2=h_f2+(x_2*h_fg2);// Btu/lbm
s_2=s_f2+(x_2*s_fg2);// Btu/(lbm.R)
Q=m*(h_2-h_1);// Btu/s
S_pa=((m*(s_2-s_1))-(Q/(T_b+459.67)));// The entropy production rate inside the valve in Btu/(s.R)
S_p=S_pa*778.17;// ft.lbf/(s.R)
printf("\n(a)The entropy production rate inside the valve if the valve is not insulated and has an isothermal external surface temperature of 60.0°F,S_p=%0.4f ft.lbf/(s.R)",S_p);
// (b)
h_2=h_1;// Btu/lbm
x_2=(h_2-h_f2)/h_fg2;// The quality of steam
x_2p=x_2*100;// % (in x_2p,p refers the quality of steam in percentage)
s_2=s_f2+(x_2*s_fg2);// Btu/(lbm.R)
Q=0;// W
S_pb=m*(s_2-s_1)-(Q/T_b);// Btu/(s.R) 
S_p=S_pb*778.17;// lbf/(s.R)
printf("\n(b)The entropy production rate inside the valve if it is insulated and assuming it has the same inlet conditions and exit temperature,S_p=%0.3f ft.lbf/(s.R)",S_p);
//(c)
S_p_pd=((S_pa-S_pb)/S_pa)*100;// The percentage decrease in S_p brought about by adding the insulation in %
printf("\n(c)The percentage decrease in S_p brought about by adding the insulation is %2.1f percentage.",S_p_pd);
