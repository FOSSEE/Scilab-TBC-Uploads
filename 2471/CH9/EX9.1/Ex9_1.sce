clear;
clc;
// Example 9.1
printf('Example 9.1\n\n');
printf('Page No. 252\n\n');

//given
a = 40;// in m
b = 25;// in m
c = 20;// in m
d = 10;// in m
e = 5;// in m
f = 2;// in m
g = 3;// in m
h = 6;// in m

//(1) Production Area
T1 = 21;// Temperature difference in degree celcius
T2 = -3;// Temperature difference in degree celcius
U1 = 1.2;// heat transfer coefficent in W/m-K
U2 = 5.6;// heat transfer coefficent in W/m-K
U3 = 2.0;// heat transfer coefficent in W/m-K
U4 = 0.7;// heat transfer coefficent in W/m-K
U5 = 0.9;// heat transfer coefficent in W/m-K
// As Q = U*A*T
Q1 = (b*h)*U1*T1;// Heat loss in W. wall in W
Q2 = (((a-c)*h) + (d*h) + (d*f))*U1*T1;// Heat loss in N. wall in W
Q3 = (c*f)*U2*T1;// Heat loss in N. window in W
Q4 = (b*g)*U3*T2;// Heat loss in N. wall/internal in W
Q5 = (b*g)*U1*T1;// Heat loss in E. wall/external in W
Q6 = (((a-c)*h) + (d*h) + (d*f))*U1*T1;// Heat loss in S. wall in W
Q7 = (c*f)*U2*T1;// Heat loss in S. window in W
Q8 = (b*a)*U4*T1;// Heat loss in roof in W
Q9 = (b*a)*U5*T1;// Heat loss in floor in W
T_Q_P = Q1 + Q2 + Q3 + Q4 + Q5 + Q6 + Q7 + Q8 + Q9;// in W

//For Office surface
T3 = 24;// Temperature difference in degree celcius
T4 = 3;// Temperature difference in degree celcius
// As Q = U*A*T
Q_1 = (b*g)*U3*T4;// Heat loss in W. wall in W
Q_2 = (d*g)*U1*T3;// Heat loss in N. wall in W
Q_3 = (((b-(2*e))*g) +(e*f))*U1*T3;// Heat loss in E. Wall in W
Q_4 = (e*f)*U2*T3;// Heat loss in E. window in W
Q_5 = (e*f)*U2*T3;// Heat loss in E. window in W
Q_6 = (d*g)*U1*T3;// Heat loss in S. wall in W
Q_7 = (b*d)*U4*T3;// Heat loss in S. roof in W
Q_8 = (b*d)*U5*T3;// Heat loss in floor in W
T_Q_O = Q_1 + Q_2 + Q_3 + Q_4 + Q_5 + Q_6 + Q_7 + Q_8; //in W

T_Q = T_Q_P + T_Q_O;// in W
printf('Total building fabric loss is %.0f W',T_Q)
