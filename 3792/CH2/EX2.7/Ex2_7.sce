// Example 2_7
clc;funcprot(0);
// Given data
a=3;// m/s^2
v_A=100;// km/h
v_C=50;// km/h
s=120;// m

// Calculation
v_A=v_A*(1000/3600);// The velocity in m/s
v_C=v_C*(1000/3600);// The velocity in m/s
a_t=(1/(2*s))*(v_C.^2-v_A.^2);// The acceleration in m/s^2
// (a) Condition at A.
a_n=sqrt(a.^2-(a_t).^2);// The acceleration in m/s^2
rho_A=v_A.^2/a_n;// The radius of curvature at A in m
// (b) Condition at B.
a_n=0;// m/s^2
a_b=a_n+a_t;// The acceleration at the inflection point B in m/s^2
// (c) Condition at C.
rho=150;// The radius of curvature of the hump at C in m
a_n=v_C.^2/rho;// The normal acceleration in m/s^2
a=sqrt(a_n.^2+a_t.^2);// The total acceleration at C in m/s^2
printf("\n(a)The radius of curvature at A,rho=%3.0f m \n(b)The acceleration at the inflection point B,a=%1.2f m/s^2 \n(c)The total acceleration at C,a=%1.2f m/s^2",rho_A,a_b,a)

