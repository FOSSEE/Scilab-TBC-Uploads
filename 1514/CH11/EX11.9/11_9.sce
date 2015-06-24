//chapter 11
//example 11.9
//page 332
clear all;
clc ;
//given
Vb2=8;
Rl=100;//load resistance in kohm
Vcc=20;//supply voltage V
vp=100;//op voltage mV
ip=vp/Rl;
Ie2=2;//Ie2>ip
Ve1=5;Vce1=3;
Vc1=Ve1+Vce1;
Vb1=Vc1;
Ve2=Vb2-0.7;
R5=Ve2/Ie2;
printf("\nR5= %.2f kohm,use 3.3 standard value kohm ",R5);R5=3.3;
Ic2=2;
Ic1=Ic2;
VR3=Vcc-Vc1;
R3=VR3/Ic1;
printf("\nR3= %d kohm,use standard value 5.6 kohm ",R3);R3=5.6;
R4=Ve1/Ic1;
printf("\nR4= %.1f kohm ,use standard value 2.7 kohm",R4);R4=2.7;
Vb1=Ve1+0.7;
I2=1000*Ic1/10;
R2=1000*Vb1/I2;
printf("\nR2= %.1f kohm,use standard value 27 kohm ",R2);R2=27;
I21=1000*Vb1/R2;
R1=1000*(Vcc-Vb1)/I21;
printf("\nR1= %d kohm which is standard value",ceil(R1));

