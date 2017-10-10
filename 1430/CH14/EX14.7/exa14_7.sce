// Example 14.7
// Calculating ABCD Parameters
R=10;
C=1/40;
s=%s;
// from figure 14.19(a),
I_2=0;
disp("I_1-3*I_1=V_2/10")
disp("=> I_1=-0.005*V_2---equation(1)")
disp("V_1=V_2+(1/(s*C)*I_1)")
disp("=> V_1=(1-2/s)*V_2---equation(1)")
//from equation 1 & 2
A=1-2/s;
C=-0.05;

//with V_2=0
disp("I_1-3*I_1=-I_2")
disp("=> I_1=0.5*I_2---equation(3)")
disp("V_1=(1/(s*C))*I_1")
disp("=> V_1=(20/s)*I_2---equation(4)")
// from equation 3 & 4
B=-20/s;
D=-0.5;
T=[A,B;C,D];
disp(T,"Required ABCD Parameters=")
