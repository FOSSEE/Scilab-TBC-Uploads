clear
clc 
//Example 8.4 REYNOLDS-NUMBER SIMILITUDE
//p-prototype, m-model
Vp=10; //speed[m/s]
//Reynolds-number similitude, Rem=Rep
//Vm*Lm/vm=Vp*Lp/vp
//vm=vp
vmp=1; //vmp=vm/vp
Lmp=1/10; //Lmp=Lm/Lp
Vm=Vp*vmp/Lmp //speed[m/s]
printf("\n The air speed in the wind tunnel for scaled model and dynamically similar conditions, V = %.f m/s.\n",Vm)