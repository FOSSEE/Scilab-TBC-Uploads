//example 4
//irreversibility during cooling of an iron block
clear
clc
m=500 //mass of iron block in kg
cavg=0.45 //kJ/kg-K
T1=473 //Initial Temp. in K
T2=300 //Final Temp. in K
Wrev=m*cavg*((T1-T2)-T2*log(T1/T2)) //reversible work in kJ
Wu=0
I=Wrev-Wu //irreversibility of the process in kJ
printf("\n Hence, the reversible owrk for the pressure ois = %.0f kJ. \n",Wrev);
printf("\n and irreversibility of the process is = %.0f kJ. \n",I);