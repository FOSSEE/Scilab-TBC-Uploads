clc;
//Example 24.1
//Page No 981



//soution

f=18*10^9;
D=16*10^3;
c=3*10^8

disp("free space path loss based on inverse square law, which yields, ");

lp=((4*%pi*D*f)/c)^2;

disp(lp,"Lp = ");

Lp=10*log10(lp);

disp('db',Lp,"Lp(dB) = ");
