//chapter 11
//example 11.3
//page 320
clear all;
clc ;
//given
Rl=120;//load resistance in kohm
Vdd=24;//supply voltage V
Id=1.5;//min drain current ma
Vgs=5.5;//from transfer characteristics(V)
Vp=8;//
Vdsmin=Vp+1-Vgs;
Vrd=(Vdd-Vdsmin)/2;
Vs=Vrd;
Rd=Vrd/Id;
Rs=Rd;
printf("\nRd=Rs=%.2f kohm,use standard value 6.8 kohm ",Rd);
//Rd<<Rl
Vg=Vs-Vgs;
R2=1;//Mohm(assuming)
VR2=Vg;
VR1=Vdd-Vg;
R1=(VR1*R2)/VR2;
printf("\nR1=%.2f Mohm,use standard value 4.7 Mohm\nR2=1 Mohm",R1);


