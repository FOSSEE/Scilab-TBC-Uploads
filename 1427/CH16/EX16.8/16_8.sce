//ques-16.8
//Calculating time required for 80 percent completion of a reaction
clc
a=1;//concentration (in mol/L)
x1=0.2;//percentage dissociation
x2=0.8;//percentage dissociation
t1=500;//time (in s)
t2=(x2/(a*(a-x2)))*((a*t1*(a-x1))/x1);
printf("Time required is %d s.",t2);
