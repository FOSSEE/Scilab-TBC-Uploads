//chapter 7
//Example 7.7
//Page 186
//matrixmodification
clear;clc;
//Voltage Sources
Ea = 1.5;
Eb = 1.5*(cos(-36.87 * %pi / 180) + %i * sin(-36.87 * %pi / 180))
Ec = 1.5;
//admittances
Ya = -%i*0.8;
Yb = Ya;
Yc= Ya;
Yd = -%i*5;
Ye = -%i*8;
Yf = -%i*4;
Yg = -%i*2.5;
Yh = Yd;
//Capacitor
Zb = -%i * 5
//current sourcs
I1 = Ea * Ya;
I2 = Eb * Yb;
I3 = I1;
I4 = 0;
//Self-admittances
Y11 = Yd + Yf + Ya;
Y22 = Yh + Yg + Yb;
Y33 = Ye + Yc + Yg + Yf;
Y44 = Yd + Ye + Yh;
//Mutual-admittances
Y12 = 0;Y21 = Y12;
Y13 = -Yf;Y31 = Y13;
Y14 = -Yd;Y41 = Y14;
Y23 = -Yg;Y32 = Y23;
Y24 = -Yh;Y42 = Y24;
Y34 = -Ye;Y43 = Y34;
//Matrix Form
I = [I1 ; I2 ; I3 ; I4];
Y = [Y11 Y12 Y13 Y14;Y21 Y22 Y23 Y24;Y31 Y32 Y33 Y34;Y41 Y42 Y43 Y44];
V = Y\I;
Z = inv(Y);
disp('Original bus impedance matrix')
disp(Z)
[m,n] = size(Z)
for i = 1:m
    for j = 1:n
    Z(5,i) = Z(i,j);
    Z(i,5) = Z(i,j)
    end
end
Z(5,5) = Z(4,4) + Zb;
disp('Modified bus impedance matrix')
disp(Z)
[m1,n1] = size(Z);
Z_new = zeros(m1-1,n1-1);
for c = 1:m1-1
    for d = 1:n1-1
    Z_new(c,d) = Z(c,d) - ((Z(c,5)*Z(5,d)) / Z(5,5));
    end
end
disp('Modified bus impedance matrix after eliminating fifth row and column')
disp(Z_new)
V_4 = Z_new(4,:) * I;
printf("\n V4 = %.2f /_%.2f per unit \n\n",abs(V_4),atan(imag(V_4),real(V_4)) * 180 / %pi)
disp('V4 same as found in Example 7.6')