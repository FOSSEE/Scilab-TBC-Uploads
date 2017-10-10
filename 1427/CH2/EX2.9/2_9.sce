//ques-2.9
//Determining percentage of Nitrogen in given coal sample
clc
w=1;//Weight of coal sample taken (in g)
v1=25;//Volume of sulphuric acid used (in mL)
n=1/10;//Normality of sulphuric acid
v2=15;//Volume of Sodium hydroxide used (in mL)
N=((v1-v2)*n*1.4)/w;//Percentage of coal sample
printf("The percentage of Ntrogen in coal sample is %.1f \n",N);
