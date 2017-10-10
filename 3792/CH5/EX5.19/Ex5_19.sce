// SAMPLE PROBLEM 5/19
clc;clear;funcprot(0);
// Given data
v_B=150;// (i) m/s
v_A=100;// (i) m/s
rho=400;// m
r=-100;// m

// Calculation
omega=v_B/rho;// (k) rad/s
r_AB=r;// (j) m
v_rel=[v_A-(v_B+(-(omega*r)))];// (i) m/s
a_A=0;// m/s^2
a_B=(v_B(1))^2/rho;// m/s^2
omegadot=0;// rad/s
a_rel=a_A-[a_B+(omegadot*r)+(omega*-(omega*r))+(2*(omega*v_rel))];// m/s^2
printf("\nThe instantaneous velocity,v_rel=%2.1fi m/s \nThe instantaneous acceleration,a=%1.2fk m/s^2",v_rel,a_rel);
v_AB=v_A-v_B;// (i) m/s
a_AB=a_A-a_B;// (j) m/s^2
