clc;
Vt=230;//Supply voltage
P=4;//No of poles
A=2;//No of parallel paths for armature conductors
Z=500;//No of armature conductors
Ra=0.2;//armature circuit resistance in ohm
Rs=0.1;//field resistance in ohm
Il=40;//line current
N=1000;//rated speed in rpm
Ia1=40;//armature current for dc series motor at 40 A line current
Ia2=20;//armature current for dc series motor at 20 A line current
//For 40A line current
Ea1=Vt-Ia1*(Ra+Rs);//counter emf
//For 20A line current
Ea2=Vt-Ia2*(Ra+Rs);//counter emf
//Let, phi_1=flux at 40 A, phi_2=flux at 20 A line current
//phi_2=0.6*(phi_1)
//(Ea1/Ea2)=(n1*phi_1)/(n2*phi_2)
//(218/224)=(1000*(phi_1))/(n2*(0.6*(phi_1))
n2=(1000*224)/(218*0.6);//speed of motor at line current of 20 A at 230 V
printf('Speed of motor at line current of 20 A at 230 V is %f rpm.',round(n2));
