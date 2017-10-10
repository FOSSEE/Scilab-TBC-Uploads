clc
clear
//INPUT DATA
cp=1.005;//specific pressure
R=0.287;//gas constant
g=1.4;//constant
t1=303;//temperature in K
t3=1773;//temperature in K
t5=1123;//temperature in K
nc=0.85;//compressor efficiency in percentage
Rp=6;//pressure ratio
nt=0.8;//turbine efficiency in percentage

//CALCULATIONS
t2=t1*(Rp^((g-1)/g));//Temperature in K
t4=t3/(Rp^((g-1)/g));//Temperature in K
t21=t1+((t2-t1)/nc);//Temperature in K
t41=t3-((t3-t4)*nt);//Temperature in K
wc=cp*(t21-t1);//compressor work in kJ/kg
wt=cp*(t3-t41);//turbine work in kJ/kg
nb=((wt-wc)/(cp*(t3-t2)))*100;//Thermal efficiency in percentage
wn=wt-wc;//net work in kJ/kg
Qs=cp*(t3-t5);//Heat supplied in kJ/kg
ns=((wt-wc)/Qs)*100;//Thermal efficiency in percentage
e=((t5-t21)/(t41-t21))*100;//Effectiveness of the regenerator

//OUTPUT
printf('(a)compressor work is %3.2f kJ/kg \n  turbine work is %3.2f kJ/kg \n (b)Thermal efficiency is %3.3f percentage \n (c)Thermal efficiency with regenerator is %3.2f percentage \n (d)Effectiveness of the regenerator is %3.1f percentage ',wc,wt,nb,ns,e)


