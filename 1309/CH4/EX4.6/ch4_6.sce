clc;
clear;
printf("\t\t\tChapter4_example6\n\n\n");
// properties of aluminium from appendix table B1
k_al=236;
p_al=2.7*1000;
c_al=896;
// properties of oak from appendix table B3
k_oak=0.19;
p_oak=0.705*1000;
c_oak=2390;
sqrt_kpc_al=sqrt(k_al*p_al*c_al);
printf("\nThe square root of kpc product of aluminium is %.2e sq.W.s/(m^4.sq.K)",sqrt_kpc_al);
kpc_R=4;
T_Li=20;
T_Ri=37.3;
T_al=(T_Li*(sqrt_kpc_al)+T_Ri*sqrt(kpc_R))/(sqrt_kpc_al+sqrt(kpc_R));
printf("\nThe temperature of aluminium is felt as %.1f degree celsius",T_al);
sqrt_kpc_oak=sqrt(k_oak*p_oak*c_oak);
printf("\nThe square root of kpc product of oak is %.2e sq.W.s/(m^4.sq.K)",sqrt_kpc_oak);
T_oak=(T_Li*(sqrt_kpc_oak)+T_Ri*sqrt(kpc_R))/(sqrt_kpc_oak+sqrt(kpc_R));
printf("\nThe temperature of oak is felt as %.1f degree celsius",T_oak);
if (T_al>T_oak) then
    printf("\nThe aluminium will feel warmer.");
elseif  (T_al<T_oak) then
        printf("\nThe oak will feel warmer.");
else
    printf("\nBoth will be felt equally warm.")
end
