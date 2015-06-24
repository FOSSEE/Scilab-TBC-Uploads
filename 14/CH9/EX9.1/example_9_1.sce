//Chapter 9
//Page 231
//Example 9.1
//loaddistribution
clear;clc;
dF_dP = [0.008 8;0.0096 6.4];
P1_min = 100;
l = [7.84 8.8 9.6 10.4 11.2 12 12.4 13];
P2_p1min = (l(1) - dF_dP(2,2)) / dF_dP(2,1);
disp('Outputs of each unit and total output for various values of incremental fuel cost')
printf("\n Plant \t Unit 1 P1 \t Unit 2 P2 \t P1+P2")
printf("\n %.2f \t %.2f \t %.2f \t %.2f",l(1),P1_min,P2_p1min,P1_min+P2_p1min)
for n = 2:8
    P1 = (l(n) - dF_dP(1,2)) / dF_dP(1,1);
    P2 = (l(n) - dF_dP(2,2)) / dF_dP(2,1);
    printf("\n %.2f \t %.2f \t %.2f \t %.2f",l(n),P1,P2,P1+P2)
end
deff('[y]=mysol(P)','[y]=[P(1)+P(2)-1000;0.008*P(1)-0.0096*P(2)+8-6.4]');
Presult = fsolve([1,1],mysol);
printf("\n\n")
disp(Presult,'The allocation of load between units for the minimum cost of various total loads in MW(P1 followed by P2)')
l_result = dF_dP(2,1) * Presult(2) + dF_dP(2,2);
disp(l_result,'Incremental fuels cost for the above mentioned load is')