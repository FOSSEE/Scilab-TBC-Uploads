//clear//
clear;
clc;

//Example 18.1
//Given
xF = 0.50;
P = 1; //[atm]
f =0.0001:0.2:1.2;
A = -(1./f-1);
x = [0.01:0.01:1];
for i =1:length(f)
  y(i,:) =-A(i)*x+xF/f(i)  
end 
//From Fig. 18.2
xB = [0.50,0.455,0.41,0.365,0.325,0.29];
yD = [0.71,0.67,0.63,0.585,0.54,0.5];
//From Fig 18.3
T = [92.2,93.7,95.0,96.5,97.7,99];
plot(f,T./100,f,xB,f,yD)
xlabel('f-moles vaporized per mole of feed')
ylabel('Concentration, mole fraction Benzene')
legend('Temperature(C)*100','Con. of Bnzene in liquid','Con. of Bnzene in vapor')
