// SAMPLE PROBLEM 5/18
clc;clear;funcprot(0);
// Given data
omega=2;// rad/s
theta=45;// degree
OCbar=450;// mm
CAbar=225;// mm

// Calculation
// a_A=(omegadot*r)+(omega*(omega*r))+(2*omega*v_rel)+a_rel
// a_A=(omegadot_CA*r_CA)+omega_CA*(omega_CA*r_CA)
// a_A=[omegadot_CA*(225/sqrt(2))*(-i-j)]-[4k*(-4k*225/sqrt(2))*(-i-j)]
omega=2;// rad/s
r=CAbar*sqrt(2);// mm
omega_CA=-4;// rad/s
v_rel=(-OCbar*sqrt(2));// mm/s
// Assume O=omega*(omega*r);O_1=omegadot*r;O_2=(2*omega*v_rel);
O_1=0;// mm/s^2
O_2=omega*(omega*r);// mm/s^2
O_2=2*omega*v_rel;// mm/s^2
// a_rel=xdotdot;
// [(1/sqrt(2))*(225omegadot_CA+3600)i]+[(1/sqrt(2))*(-225omegadot_CA+3600)j] =(900*sqrt(2))i-(1800*sqrt(2))j+xdotdoti
omegadot_CA=(((-1800*sqrt(2))*sqrt(2))-3600)/-225;// rad/s^2
xdotdot=(((225*omegadot_CA)+3600)/sqrt(2))-(-900*sqrt(2));// mm/s^2
printf("\nThe angular acceleration of AC,omega_CA=%2.0f rad/s \nThe acceleration of A relative to the rotating slot in OD,xdotdot=%4.0f mm/s",omegadot_CA,xdotdot);
