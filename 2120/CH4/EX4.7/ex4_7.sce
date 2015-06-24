//Exa 4.7
clc;
clear;
close;
// Given data
v1 = 0.5;// in m^3
v2 = 0.125;// in m^3
p1 = 1.5;// in bar
p1 = p1 * 10^5;// in N per m^2
p2 = 9;//in bar
p2 = p2 * 10^5;// in N per m^2
T1 = 100;// in °C
T1 = T1 + 273;// in K
R = 8.31;
// Formula p1*v1= n*R*T1
n= p1*v1/(R*T1);// in mole
disp(n,"Mass of gas in mole is :");
// Part (b)
// Formula p1*v1/T1 = p2*v2/T2
T2 = (p2 * v2 * T1)/(p1 * v1);// in K
disp(T2-273,"Temperature at the end of compression in °C is :");
// Part (c)
// Formula p1*v1^n = p2*v2^n
n1= log(p2/p1)/log(v1/v2)
disp(n1,"Value of index n of compression is :");
// Part (d)
F = 3;
C_v =1/2*R*F;
del_U = (n * C_v * (T2-T1));// in J
disp(del_U*10^-3,"Increase in internal energy of gas in kJ is : ");
// Part(e)
Gamma = 1.67;
Q_12 = n*(Gamma-n1)/(1-n1)*R*(T2-T1)/(Gamma-1);// in J
Q_12 = Q_12 * 10^-3;// in kJ
disp(Q_12,"Heat interaction in kJ is : ");
if Q_12<0 then
    disp("The -ve sign indicates heat rejection during the process")
end

// Note: There is some difference between the answer of book and coding . Both the answer is right but accurate answer is of coding.
//          Because in the book, the taken values are appox. and in the coding the values are accurate




