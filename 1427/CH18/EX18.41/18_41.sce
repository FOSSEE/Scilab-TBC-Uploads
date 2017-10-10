//ques-18.41
//Calculating final temperature and w and q and change in internal energy for the process
clc
V1=6; V2=2;//volume (in L)
T1=273+27;//temperature (in K)
Cv=20.91;//(in J/K/mol)
q=1.4;
T2=T1*((V1/V2)^(q-1));
U=Cv*(T2-T1);
w=-U;
q=0;//adiabatic process
printf("Final temperature is %.0f K, w=%.4f kJ, q=%d and change in internal energy is %.4f kJ.",T2,w/1000,q,U/1000);
