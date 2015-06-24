//clear//
clear;
clc;

//Example 20.3
//Given
T = 25; //[C]
//x(1) = Acetone, x(2)= water and x(3)= MIK 
//F = feed
xF = [0.40, 0.60,0.0]';
xMIK_i = [0.0,0.0,1.0]';

//Solution
//Using data from Fig. 20.10, to plot equilibrium curve
//Fig. 20.13.
//Basis:
F = 100; //[mass units/h]
//Let n = mass flow rate of H2O in extarct
//m = mass flow rate of MIK in raffinate
//For 99 percent recovery of A, the extarct has 
E_A = 0.99*xF(1)*F;
//And the Raffinate has
R_A =  xF(1)*F-E_A;
//The total flows are
//At the top,
//La = F = 40*A+60*H2O
//Va = 39.6*A+n*H20+(100-m)*MIK = 139.6 + n-m
//At the bottom,
Vb = 100; // MIK
//Lb = 0.4*A+(60-n)*H2O+m*MIK = 60.4 +m-n
//Since n and m are small and tend to cancel in the summatios for Va and La,
//the total extract flow Va is about 140, which would make
yA_a = 39.6/140;
xA = 0.4/60;
//From Fig 20.10, for
yA = 0.283, yH2O = 0.049
xA = 0.007, xMIK = 0.02
nm = [6;2];
err = 1;
while(err>0.1)
  nmold = nm;
  nm(1) = yH2O/(1-yH2O)*(39.6+100-nm(2));
  nm(2) = xMIK/(1-xMIK)*(0.4+60-nm(1));
  err = norm(nm-nmold);
end
n = nm(1);
m = nm(2);
Va = 139.6+n-m;
yA_a = 39.6/Va;
Lb = 60.4+m-n;
xA_b = 0.4/Lb;

//For an intermediate point on the operating line, picking 
yA = 0.12;
//From Fig. 20.10,
yH2O = 0.03;
yMIK = 0.85;
//Since the raffinate phase has only 2 to 3 pecent MIK, assuming
//that the amount of MIK in the extract is 100, the same as the solvent
//fed:
V = 100/yMIK;
//By an overall balance from the solvent inlet (bottom) to the intermediate
//point,
xb = xA_b;
L = Lb+V-Vb;
yb = 0; 
//A balance on A over the same section gives xA;
xA = (0.4+117.6*0.12-0)/L;
//For xA and xMIK = 0.03, A balance on MIK from the solvent 
//inlet to the intermediate point gives
V_revised = 101.1/0.85; 
L_revised = 54.4+118.9-100;
xA_revised = (0.4+118.9*0.12)/73.3; 
y =0:0.1:1;
x = y; 
plot(x,y,[0.00074,0.2,0.4,],[0,0.12,0.272,])
xgrid()
xlabel('x')
ylabel('y')
title('Figure 20.13')
legend('y=x','operating line')

//From Fig. 20.13
disp(3.4,'Number of stages')
