//ques-16.9
//Finding order of reaction and velocity constant
clc
//t=time in minutes; y=volume of HCl (in mL)
a=61.95;//initial volume (in mL)
t2=4.89; y2=50.59;
t3=10.37; y3=42.40;
t4=28.18; y4=29.35;
k2=(a-y2)/(a*t2*y2);//(in /conc/min)
k3=(a-y3)/(a*t3*y3);//(in /conc/min)
k4=(a-y4)/(a*t4*y4);//(in /conc/min)
//As values of k are identical
//2nd order reaction
k=(k2+k3+k4)/3;//velocity constant (in /conc/min)
printf("The reaction is of 2nd order with velocity constant being %.6f /conc/min.",k);
