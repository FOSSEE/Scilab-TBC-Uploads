// SAMPLE PROBLEM 5/17
clc;clear;funcprot(0);
// Given data
omega=2;// rad/sec
theta=45;// degree
OCbar=450;// mm
CAbar=225;// mm

// Calculation
// v_A=omega_CA*r_CA;
// v_A=(225/sqrt(2))omega_CA*(i-j)
OPbar=sqrt((OCbar-CAbar)^2+(CAbar)^2);// mm
r=OPbar;// mm
omega=omega;//(k) rad/s
O=omega*r;// mm/s
// Substitution into the relative-velocity equation gives
// (225/sqrt(2))omega_CA*(i-j)=(450*sqrt(2)j+xdoti)
// Equating separately the coefficients of the i and j terms yields
omega_CA=O/(225/sqrt(2));// mm/s
xdot=(225/sqrt(2))*omega_CA;// mm/s
v_rel=xdot;// mm/s
v_A=CAbar*abs(omega_CA);// mm/s
v_P=OPbar*omega;// mm/s
v_AP=abs(v_rel);// mm/s
omega_AC=v_A/CAbar;// rad/s
printf("\nThe actual angular velocity of CA,omega_CA=%1.0f rad/s \nThe velocity of A relative to the rotating slot in OD,xdot=v_rel=%3.2f mm/s \nThe velocity of pin A,v_A=%3.0f mm/s",omega_CA,xdot,v_A);
