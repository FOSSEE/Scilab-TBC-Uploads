////Ex 7.1
clc;
clear;
close;
format('v',9);
th=4;//ms
VCC=10;//V
C=0.05;//micro F(choosen between 0.01<=C<=1)
R=th*10^-3/(1.1*C*10^-6)/1000;//kohm
C1=0.01;//micro F(assumed)
C2=0.01;//micro F(choosen between 0.01<=C<=1)
R2=th*10^-3/(10*C2*10^-6)/1000;//kohm
C3=10;//micro F
disp("Design values are : ");
disp(C,"Capacitance C(micro F)");
disp(R,"Resistance R(kohm)");
disp(C1,"Capacitance C1(micro F)");
disp(C2,"Capacitance C2(micro F)");
disp(R2,"Resistance R2(kohm)");
disp(C3,"Capacitance C3(micro F)");
//Answer of R2 is wrong in the book.
