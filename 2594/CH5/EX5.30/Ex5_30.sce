clc
Eg=-1.1
disp("Eg = "+string(Eg)+"V") //initializing value of energy gap.
Vf1=0.6
disp("Vf1 = "+string(Vf1)+"V") //initializing value of forward voltage for case 1.
T1=300
disp("T1 = "+string(T1)+"K") //initializing value of temperature for case 1.
T2=310
disp("T2 = "+string(T2)+"K") //initializing value of temperature for case 2 .
Vf2=(((Eg+Vf1)*T2)/(T1))-Eg
disp("Forward voltage for case 2,Vf2=((Eg+Vf1)*T2)/(T1)+Eg)="+string(Vf2)+" V")//calculation.
