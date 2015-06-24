//Example 5.18,Pg5.20
clc;
//Given Full load kVA=100kVA
//Wi=600W(iron loss)
//WCu=1.5kW(copper loss)
//(i)
x=1 //Full load
pf=0.8
n=(x*100*pf/((x*100*pf)+0.6+((x^2)*1.5)))*100
printf("\n Efficiency=%.2f percent \n",n)
//(ii)
x=0.5
pf=1
n=(x*100*pf/((x*100*pf)+0.6+((x^2)*1.5)))*100
printf("\n Efficiency=%.2f percent \n",n)
