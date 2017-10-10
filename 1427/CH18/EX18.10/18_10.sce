//ques-18.10
//Calculating work done and heat rejected and efficiency
clc
T1=0; T2=100;//temperature (in degree celsius)
q2=840;//energy absorbed (in J)
q1=q2*((T1+273)/(T2+273));//heat rejected (in J)
W=q2-q1;//work done (in J)
n=(T2-T1)/(T2+273);//efficiency
printf("The work done is %.1f J, heat rejected is %.1f J and efficiency is %.3f.",W,q1,n);
