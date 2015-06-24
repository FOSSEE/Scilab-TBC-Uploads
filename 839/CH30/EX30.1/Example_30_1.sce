//clear//
clear;
clc;

//Example 30.1
//Given
//From Table 30.1
Dp = [4.699,3.327,2.362,1.651,1.168,0.833,0.589,0.417,0.208,0.0000001]'; //[mm]
F = [0,0.025,0.15,0.47,0.73,0.885,0.94,0.96,0.98,1.0]'; 
O = [0,0.071,0.43,0.85,0.97,0.99,1.00]'; //[1 to 7]
U = [0.0,0.195,0.58,0.83,0.91,0.94,0.975,1.00]'; //[3 to 10]

//Solution
plot(Dp,F)
plot(Dp(1:7),O,'r')
plot(Dp(3:$),U,'g')
xgrid();
xlabel('Dp mm');
ylabel('Cumulative mass fraction larger than Dp');
title('Analysis for Example 30.1');
legend('Feed','Oversize','Undersize');

//Cut-point diameter from the Table 30.1 
Dcp = 1.651; //[mm]
xF = 0.47;
xD = 0.85;
xB = 0.195;
//From Eq.(30.3)
DbyF = (xF-xB)/(xD-xB);
BbyF = 1-DbyF;
//Using Eq.(30.7), overall effectiveness
E = (xF-xB)*(xD-xF)*(1-xB)*(xD)/((xD-xB)^2*((1-xF)*xF));
disp('respectively',BbyF,DbyF,'mass ratio of overflow and underflow is');
disp(E,'Overall Effectiveness (E) =');
