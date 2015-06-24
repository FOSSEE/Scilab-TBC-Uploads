clear;
clc;
printf("\t\t\tExample Number 8.10\n\n\n");
// heat transfer reduction with parallel plate shield
// Example 8.10 (page no.-413) 
// solution

E1 = 0.3;// emissivity of first plane
E2 = 0.8;// emissivity of second plane
E3 = 0.04;// emissivity of shield
sigma = 5.669*10^(-8);// [W/square meter K^(4)]
// the heat transfer without the shield is given by 
// q_by_A = sigma*(T1^4-T2^4)/((1/E1)+(1/E2)-1) = 0.279*sigma*(T1^4-T2^4)
// where T1 is temperature of first plane and T2 is temperature of second plane
// the radiation network for the problem with the shield in place is shown in figure (8-32) (page no.-410). 
// the resistances are 
R1 = (1-E1)/E1;
R2 = (1-E2)/E2;
R3 = (1-E3)/E3;
// the total resistance with the shield is 
R = R1+R2+R3;
// and the heat transfer is 
// q_by_A = sigma*(T1^4-T2^4)/R = 0.01902*sigma*(T1^4-T2^4)
printf("so the heat tranfer is reduced by %f percent",((0.279-0.01902)/0.279)*100);
















