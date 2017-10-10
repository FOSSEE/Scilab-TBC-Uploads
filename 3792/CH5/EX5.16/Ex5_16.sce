// SAMPLE PROBLEM 5/16
clc;funcprot(0);
// Given data
omega=4;// rad/sec
omegadot=10;// rad/sec^2
r=6;// in
rdot=5;// in/sec
rdotdot=81;// in/sec^2

// Calculation
// Velocity
v_rel=rdot;// (k) in/sec
v_A=[v_rel,(omega*r)];// in/sec
printf("\nv_A=%1.0fi+%2.0fj in/sec",v_A(1),v_A(2));
v_A=norm(v_A);// in/sec
printf("\nv_A=%2.1f in/sec",v_A);
// Acceleration
// Assume O=omega*(omega*r);O_1=omegadot*r;O_2=(2*omega*v_rel);
O=-(omega*(omega*r));// in/sec^2
O_1=-omegadot*r;// in/sec^2
O_2=2*(omega)*(v_rel);// in/sec^2
a_rel=rdotdot;// in/sec^2
a_A=[(a_rel+O),(O_2+O_1)];// in/sec^2
printf("\na_A=%2.0fi+(%2.0f)j in/sec^2",a_A(1),a_A(2));
a_A=norm(a_A);// in/sec^2
printf("\na_A=%2.0f in/sec",a_A);
