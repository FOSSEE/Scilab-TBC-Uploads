//ques-16.7
//Calculating time required
clc
t1=50;//initial half-life (in s)
t2=25;//new half-life (in s)
a2=1;//concentration (in mol/L)
a1=0.5;//concentration (in mol/L)
n=1+(log10(t1/t2)/log10(a2/a1));
//n=2; 2nd order reaction
k=1/(t1*a1);
p=20;//percentage reduction
x=a1*(1-(p/100));//concentration left after reduction (in mol/L)
t=x/(a1*k*(a1-x));
printf("Time required is %d s.",t);
