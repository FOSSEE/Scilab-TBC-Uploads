clc;
//page no 451
//problem no 12.13.1
//A 8 bit codewords
Pbec=0.01;n=8;i=3;
Pi=(Pbec^i)*((1-(Pbec))^(n-i));
Cin=(factorial(n))/(factorial(i)*factorial(n-i));
Pin=Cin*Pi;
P_in=Cin*Pbec^i
disp(Pin,'Pin=','The probability of a received codeword');
disp(P_in,'P_in');