//ques-16.10
//Calculating rate constant and half life and time required to complete 75 percent of reaction
clc
a=0.1;//initial concentration (in mol/L)
x1=(20/100)*a;//mol/L
t1=40;//time (in minutes)
//2nd order reaction
k=x1/(a*t1*(a-x1));//rate constant (in L/mol/min)
t_h=1/(a*k);//half-life (in min)
x2=(75/100)*a;//mol/L
t2=x2/(a*k*(a-x2));//time required (in min)
printf("The rate constant is %.4f L/mol/min, half-life is %.0f min and time required to complete 75 percent of reaction is %d min.",k,t_h,t2);
