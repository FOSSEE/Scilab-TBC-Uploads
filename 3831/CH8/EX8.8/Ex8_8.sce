// Example 8_8
clc;funcprot(0);
// Given data
W=0.250;// hp
V=1.00;// quart of water
p_1=14.7;// psia
T_1=60.0;// °F
p_2=p_1;// psia
t=10;// min
c=1.00;// Btu/(lbm.R)

// Calculation
V=V*(1/4)*0.13368;// ft^3
v=0.01603;// ft^3/lbm
m=V/v;// lbm
Q_12bymc=0;// Btu/lbm
T_2=T_1+Q_12bymc-((-W*t*(1/60)*(2545))/(m*c));// °F
S_p12=m*c*log((T_2+459.67)/(T_1+459.67));// Btu/R
printf("\nThe temperature of the water when the machine is turned off,T_2=%3.0f°F \nThe amount of entropy produced,1(S_p)2=%0.3f Btu/R",T_2,S_p12);
