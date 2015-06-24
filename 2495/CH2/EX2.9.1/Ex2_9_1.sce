clear
clc
x1=[0.0200,0.0150,0.0100,0.0075,0.0050,0.00025]
y2=[0.104,0.101,0.099,0.098]
x2=[0.0200,0.0150,0.0100,0.0050]
y1=[0.585,0.440,0.300,0.230,0.18,0.140]
plot(x1,y1,'go-',x2,y2,'ro-')
[m1,c1]=reglin(x1,y1)
[m2,c2]=reglin(x2,y2)
R=82.0;//in cm^2atm/Kmol
T=298;//in K
M=R*T/c2;//molar mass of polyisobutylene in gm/mol
printf('M=%.1d gm/mol',M)

//There is some error in the solution given in textbook
//There are some errors in the solution given in textbook
//page 68
