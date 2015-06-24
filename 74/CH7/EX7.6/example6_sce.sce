//chapter 7
//example 7.6
//page 285, figure 7.40
R1=10000;R2=5100;R3=10000;
C1=.001*10^-6;
V=10;
V5=(V*R3)/(R3+R2);
disp(V5)
fo=2.4*(V-V5)/(R1*C1*V);
disp(fo)