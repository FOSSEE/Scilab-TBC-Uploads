//developed in windows XP operating system
//platform Scilab 5.4.1
clc;clear;
//example 6.1
//calculation of percentage ripple,the regulation and the optimum number of stages for minimum regulation in Cockcroft-Walton type voltage multiplier

//given data
C=0.05*10^-6//value of capacitance(in F)
Vmax=125*10^3//value of supply transformer secondary voltage(in V)
f=150//frequency(in Hz)
I=5*10^-3//load current(in A)
nst=8//number of stages

//calculation
n=nst*2//number of capacitors
//from equation of ripple voltage
deltaV=(I/(f*C))*(n*(n+1)/2)
perripple=(deltaV*100)/(16*Vmax)
deltaVn=(I/(f*C))*(((2*nst^3)/3)+(nst*nst/2)-(nst/6))//voltage drop...here n = nst = number of stages
reg=deltaVn/(2*nst*Vmax)//regulation
nopt=round(sqrt(Vmax*f*C/I))//optimum number of stages

printf('the value of percentage ripple is %3.2f percentage.',perripple)
printf('\nthe value of the regulation is %3.1f percentage.',reg*100)
printf('\nthe optimum number of stages for minimum regulation is %d.',nopt)

