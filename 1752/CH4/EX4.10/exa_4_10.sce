//Exa 4.10
clc;
clear;
close;
//given data
L=40*10^-2;// in m
k=1.5;// in W/mK
A=4;// in square meter
alpha=1.65*10^-3;// in m^2/h
//T = 50-40*x+10*x^2+20*x^3-15*x^4 , so
// dtBYdx= -40+20*x+60*x^2-60*x^3
// d2tBYdx2 = 20+120*x-180*x^2

// Part (a) Heat entering the slab
//q1= -k*A*dtBYdx , at
x=0;
qi= -k*A*(-40+20*x+60*x^2-60*x^3);// in w
disp(qi,"Heat entering the slab in watt")
// Heat leaving the slab
//ql= -k*A*dtBYdx , at
x=L;
ql= -k*A*(-40+20*x+60*x^2-60*x^3);// in w
disp(ql,"Heat leaving the slab in watt")

// Part (b) Rate of heat storage
RateOfHeatStorage = qi-ql;// in watt
disp(RateOfHeatStorage,"Rate of heat storage in watt");

// Part (c) Rate of temperature change
// d2tBYdx2 = 1/alpha*dtBYdtoh
// dtBYdtoh= alpha*d2tBYdx2, at
x=0;
dtBYdtoh = alpha*(20+120*x-180*x^2);// in degree C/h
disp(dtBYdtoh,"The rate of temperature change at entering the slab in degree C/h")
// dtBYdtoh= alpha*d2tBYdx2, at
x=L
dtBYdtoh = alpha*(20+120*x-180*x^2);// in degree C/h
disp(dtBYdtoh,"The rate of temperature change at leaving the slab in degree C/h")

// Part (d) for the rate of heating or cooling to be maximum
// dBYdx of dtBYdtoh = 0
// dBYdx of (alpha*d2tBYdx2) =0
// d3tBYdx3 = 0
x=120/360;// in meter
disp(x,"The point where rate of heating or cooling is maximum in meter")
