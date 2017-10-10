//Example_a_10_3 page no:465
clc;
K=0.5;
L1L2=36;
M=K*sqrt(L1L2);
t=0;
//calculating the voltages
V1=20*(-sind((50*t-30))*50)-6*(-sind((50*t)-30)*50);
V2=-15*(-sind((50*t-30))*50)+18*(-sind((50*t)-30)*50);
W=(((1/2)*4*(5*cosd((50*t)-30))^2)+((1/2)*9*(2*cosd((50*t)-30))^2)-(3*(5*cosd((50*t)-30)*2*cosd((50*t)-30))))*%i;
disp(V1,"the value of V1 is (in V)");
disp(V2,"the value of V2 is (in V)");
disp(W,"the total energy stored in the system is (in W)");
