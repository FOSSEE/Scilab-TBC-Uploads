//Chapter 5,Ex5.8,Pg 5.8
clc;
//Primary voltage=230V no-load primary current=5A pf=0.25 N1=200 f=50Hz
//(i)
fluxm=230/(4.44*50*200) //Using E=4.44fN1*fluxm
printf("\n Max flux in the core=%.5f Wb \n",fluxm)
//(ii)
W=230*5*0.25 //Using the formula W=V1*I0*powerfactor
printf("\n Core loss =%.1f W \n",W)
//(iii)
x=sqrt(1-(0.25^2)) //x=sin(phi)
Iu=5*x
printf("\n Magnetising current=%.2f A \n",Iu)
