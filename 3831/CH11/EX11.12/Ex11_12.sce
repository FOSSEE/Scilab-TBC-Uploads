// Example 11_12
clc;funcprot(0);
// Given data
T=60.0;// °F
p_1=14.7;// psia
r_c=19.2:1;// Compression ratio

// Solution
// From Table C.16a in Thermodynamic Tables to accompany Modern Engineering Thermodynamics,we find that, at 60.0°F = 520.R,
u_1=88.62;// Btu/lbm
p_r1=1.2147;
v_r1=158.58;
v_2byv_1=1/19.2;
v_r2=v_r1*v_2byv_1;
// Scanning down the v_r column in Table C.16a, we find that vr = 8.26 at about
T_2=1600-459.67;// °F
u_2=286.06;// Btu/lbm
p_r2=71.73;
p_2=p_1*(p_r2/p_r1);// psia
W_12bym=u_1-u_2;// Btu/lbm
printf("\nThe final temperature and pressure of the air at the end of the compression stroke,T_2=%4.0f°F and p_2=%3.1f psia. \nThe work required per lbm of air present,1W2/m=%3.2f Btu/lbm",T_2,p_2,W_12bym);
