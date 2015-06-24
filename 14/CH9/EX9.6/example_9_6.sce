//Chapter 9
//Page 241
//Example 9.6
//savings
clear;clc;
l = 12.5;
dF_dP = [ 0.01 8.5;0.015 9.5];
B22 = 0;B12 = 0;//since all the load is at plant 2
P1_trans = 200;
PL_trans = 16;
B11 = PL_trans / P1_trans^2;
P1 = (l - dF_dP(1,2)) / (2*B11 * l + dF_dP(1,1));
P2 = (l - dF_dP(2,2)) / dF_dP(2,1);
PL = B11 * P1^2;
Pr = P1 + P2 - PL;
deff('[y]=mysol(P)','[y]=[0.01*P(1)-0.015*P(2)+8.5-9.5;P(1)+P(2)-0.0004*(P(1))^2-384]');
Presult=fsolve([1,1],mysol);
disp(Presult,'Values of P1 and P2 in MW')
U1 = integrate('(0.010 * P1 + 8.5)','P1',P1_trans,Presult(1,1));
U2 = integrate('- (0.015 * P2 + 9.5)','P2',P1_trans,Presult(1,2));
disp(U1,'Increase in fuel cost due to increase in load on plant 1 in $ per hour')
disp(U2,'Increase in fuel cost due to increase in load on plant 2 in $ per hour')
disp(U1 - U2,'The net savings by accounting for transmission loss in scheduling the received load of 384MW in $ per hour is')