// SAMPLE PROBLEM 5/7
clc;funcprot(0);
// Given data
r=0.300;// m
v_O=3;// m/s
theta=30;// degree
r_0=0.200;// m
ACbar=0.436;// m
OCbar=0.300;// m

// Calculation
// Solution I (Scalar-Geometric)
omega=v_O/r;// rad/s
v_AO=r_0*omega;// m/s
v_A=sqrt(v_O^2+v_AO^2+(2*v_O*v_AO*cosd(theta)));// m/s
v_AC=(ACbar/OCbar)*v_O;// m/s
v_A=v_AC;// m/s
printf("\nThe velocity of point A on the wheel,v_A=%1.2f m/s",v_A);
// Solution II (Vector)
omega=[0,0,-omega];// rad/s
r_0=[(r_0*-cosd(theta)),(r_0*sind(theta)),0];// m
v_O=[v_O,0,0];// m/s
v_AO1=det([omega(2),omega(3);r_0(2),r_0(3)]);// m/s
v_AO2=-det([omega(1),omega(3);r_0(1),r_0(3)]);// m/s
v_AO3=det([omega(1),omega(2);r_0(1),r_0(2)]);// m/s
v_AO=[v_AO1,v_AO2,v_AO3];// m/s
v_A=v_O+v_AO;// m/s
printf("\nThe velocity of point A on the wheel,v_A=%1.0fi+%1.3fj m/s",v_A(1),v_A(2));
v_A=norm(v_A);// m/s

