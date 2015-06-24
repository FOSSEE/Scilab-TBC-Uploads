//Ex5.19,Pg5.21
clc;
flkva=25 //Full load kVA
R1=1.8 //Primary resistance in ohms
R2=0.02 //Secondary resistance in ohms
E1=2200 //Primary EMF in volts
E2=220 //Secondary EMF in volts
Wi=1000 //Iron loss in watts
I2=flkva*1000/220
printf("\n I2=%.2f A \n",I2)
K=E2/E1
printf("\n K=%.1f \n",K)
R02=R2+(K^2)*R1
printf("\n Effective secondary resistance=%.3f ohms \n",R02)
Wcu=(I2^2)*R02
printf("\n Copper loss=%.2f W \n",Wcu)
//(i)
x=1 //Full load
pf=1
n=(x*flkva*pf/((x*flkva*pf)+Wi/1000+((x^2)*Wcu/1000)))*100
printf("\n Efficiency=%.2f percent \n",n)
//(ii)
x=0.5
pf=0.8
n=(x*flkva*pf/((x*flkva*pf)+Wi/1000+((x^2)*Wcu/1000)))*100
printf("\n Efficiency=%.2f percent \n",n)
