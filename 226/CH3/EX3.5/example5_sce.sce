//chapter 3
//example 3.5
//page 85
printf("\n")
printf("given")
Eo=20;f=60;Rl=500;
Il=Eo/Rl;
Vr=(10*Eo)/100;
printf("10percent of Eo is %dV\n",Vr)
Eomin=Eo-.5*Vr
Eomax=Eo+.5*Vr
Q1=sin(inv(Eomin/Eomax));
Q1=65
Q2=90-Q1
T=1/f;
t2=(Q2*T)/360;
printf(" charging time is %3.4fs\n",t2)
t1=T-t2
printf("discharging time is %3.4fs\n",t1)
C1=((Il*t1)/Vr)*10^6;
printf("reservior capacitance is %duF\n",C1)