clear
clc
//to find tangential speed of point on the equator of pulsar

// GIVEN:
//rotational period of pulsar
T = 0.033//in seconds
//radius of pulsar
r = 15//in km

// SOLUTION:
//using kinematic equation of motion for rotational motion
//angular speed
w = (2*3.14)/T//in rad/s
//tangential speed of point on the equator of pulsar
vT = w*r//in km/s

printf ("\n\n Angular speed w = \n\n %3i rad/s",w);
//answer of vT is slightly varying.But answer of scilab program and calculator is same
printf ("\n\n Tangential speed of point on the equator of pulsar vT = \n\n %4i km/s",vT);
