//All the quantities are expressed in SI units

M1 = 3;
b = 40*%pi/180;

//for case 1, for M = 3, from Appendix B, we have
p0_ratio_case1 = 0.3283;

//for case 2
Mn_1 = M1*sin(b);

//from Appendix B
p0_ratio1 = 0.7535;
Mn_2 = 0.588;

//from fig. 9.9, for M1 = 3 and beta = 40, we have
theta = 22*%pi/180;
M2 = Mn_2/sin(b-theta);

//from appendix B for M = 1.9; we have
p0_ratio2 = 0.7674;
p0_ratio_case2 = p0_ratio1*p0_ratio2;

ratio = p0_ratio_case2/p0_ratio_case1;

printf("\nRESULTS\n---------\n        Ans = %1.2f\n",ratio)