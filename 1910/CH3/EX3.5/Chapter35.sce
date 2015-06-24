// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 3, Example 5")
//Thermal conductivity of aluminium in W/(m*K)
k = 200;
//Diameter in m
d = 20*(10^(-3));
//Length of fin in m
L = 0.2;
//Wall temperature in degree C
Tw = 400;
//Air temperature in degree C
Tinfinity = 30;
//Heat transfer coefficient in W/(m^2*K)
h = 40;
//internodal distance in x direction in m
deltax = L/5;
//Node 1 temperature is equal to  wall temperature in degree C
T1 = Tw;
//using Nodal Equations, we have Coefficeint Matrix A as
A = [2.064,-1,0,0,0;
     -1,2.064,-1,0,0;
     0,-1,2.064,-1,0;
     0,0,-1,2.064,-1;
     0,0,0,-1,1.032];
//Coefficient matrix B
B = [401.92;
     1.92;
     1.92;
     1.92;
     0.96];
//T2, T3, T4, T5, T6 are nodal temperature in degree C
//T is the temperature matrix and is transpose of [T2 T3 T4 T5 T6]
//Therefore the temperature matrix is
T = (A^(-1))*B;
//Temperature at nodal points in degree C
disp("Temperatures at nodal points in degree C")
disp("T2 in degree C")
T2 = T(1)
disp("T3 in degree C")
T3 = T(2)
disp("T4 in degree C")
T4 = T(3)
disp("T5 in degree C")
T5 = T(4)
disp("T6 in degree C")
T6 = T(5)
//Heat transfer rate in W
disp("Heat loss from fin in W")
Q = -((((k*%pi)*d)*d)*(T2-T1))/(4*deltax)
//Using eq. 2.67
//Parameter m in meter inverse
m = (((h*%pi)*d)/((((k*%pi)*d)*d)/4))^0.5;
//Generalised eq. of temperature is eq. 2.67
//T=30+193.61*cosh(m*(L-x))
//Calculating analytical temperatures in degree C
//i is the looping parameter
for i = 1:5
  //Distance in m
  x = 0.04*i;
  //Ta is the matrix of actual temperatures in degree C
  Ta(1,i) = 30+193.61*cosh(m*(L-x));
end;
//Heat loss in W as in eq. 2.68
Qa = (((((((((h*%pi)*d)*k)*%pi)*d)*d)/4)^0.5)*370)*tanh(m*L);
disp("Comparison between actual and numerical values")
// L.69: No simple equivalent, so mtlb_fprintf() is called.
mtlb_fprintf("Actual heat transfer is %5.2f W while predicted numerically is %5.2f W\n",Qa,Q)
// L.71: No simple equivalent, so mtlb_fprintf() is called.
mtlb_fprintf("At nodal point 2, actual temperature is %5.2f C while predicted numerically is %5.2f C\n",Ta(1),T(1))
// L.72: No simple equivalent, so mtlb_fprintf() is called.
mtlb_fprintf("At nodal point 3, actual temperature is %5.2f C while predicted numerically is %5.2f C\n",Ta(2),T(2))
// L.73: No simple equivalent, so mtlb_fprintf() is called.
mtlb_fprintf("At nodal point 4, actual temperature is %5.2f C while predicted numerically is %5.2f C\n",Ta(3),T(3))
// L.74: No simple equivalent, so mtlb_fprintf() is called.
mtlb_fprintf("At nodal point 5, actual temperature is %5.2f C while predicted numerically is %5.2f C\n",Ta(4),T(4))
// L.75: No simple equivalent, so mtlb_fprintf() is called.
mtlb_fprintf("At nodal point 6, actual temperature is %5.2f C while predicted numerically is %5.2f C\n",Ta(5),T(5))
