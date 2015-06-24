//To calculate the critical temperature
T1 = 3;    //temperature, K
T2 = 7.1;    //temperature, K
lamda_T1 = 396;    //penetration depth, armstrong
lamda_T2 = 1730;    //penetration depth, armstrong
A = (((lamda_T2/lamda_T1)^2)*T2^4) - T1^4;
B = ((lamda_T2/lamda_T1)^2)-1;
Tc = (A/B)^(1/4);      //critical temperature, K
printf("critical temperature for lead is %5.3f K",Tc);
