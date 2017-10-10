clc;
Vt=230;//Supply voltage
P=4;//No of poles
A=2;//No of parallel paths for armature conductors
Z=600;//No of armature conductors
Ra=0.25;//armature circuit resistance in ohm
phi=0.01;//flux per pole in weber
Pr=500;//rotational losses in watts
//generated emf in armature, Ea=(phi*Z*P*n)/(60*A) if n is speed in armature
//Counter emf is Ea=(0.01*600*4*n)/(60*2)=0.2n volts
//Vt=Ea+Ia*Ra
//Ia=(Vt-Ea)/Ra/
//Shaft o/p in watts, Psh=Ea*Ia-Pr, Psh=(0.2n)*(920-0.8n)-500 ....(1)
n=[700 800 900 1000 1100];//different speeds of motor for which the shaft o/p power is to be measured
//Psh=(0.184*n)-(1.6*(10e-4)*n*n)-0.5, Shaft o/p power in KW.
Psh1=49.1;//Shaft o/p power in KW at n=700 rpm
Psh2=44.3;//Shaft o/p power in KW at n=800 rpm
Psh3=33.5;//Shaft o/p power in KW at n=900 rpm       *Psh1,Psh2,Psh3,Psh4,Psh5 are calclulated from equation (1)*
Psh4=23.5;//Shaft o/p power in KW at n=1000 rpm
Psh5=8.3;//Shaft o/p power in KW at n=1100 rpm
Psh=[Psh1 Psh2 Psh3 Psh4 Psh5];
Pi=[4.5 8.5 14 21.1 30];//i/p power supplied to fan in KW.
plot(n,Psh,n,Pi);xlabel('RPM');ylabel('KW');//Shaft o/p power versus speed of motor and power i/p versus speed of fan are plotted on the same graph
//For plot :-*blue line- motor characteristic,green line- fan charactestic*
//The intesecton of these two curves is called as OPERATING POINT.
//At operating point the speed is 1012 rpm & pwer o/p of motor or power i/p to the fan is 22 KW ....(from the intersection point of two curves)
n_=1012;//speed at operating point
P_o=22000;//Power output loss
Ia=920-(0.8*n_);//armature current
Parm=Ia*Ia*Ra;//armature loss
P_ip=P_o+Pr+Parm;//Power input
%n=(P_o/P_ip)*100;//motor efficiency
printf('Armature current is %f A\n.',Ia);
printf('Operating speed is %f rpm\n.',n_)
printf('Motor efficiency is %f percent.',%n);
