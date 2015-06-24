//chapter 4
//example 4.8
//page 113
clear all;
clc ;

//given
hfe1=50;//minimum value
hfe2=150;//maximum value
Vbe=0.7;
Vcc=15;//supply voltage V
R1=18.6;R2=11.4;//kohm
VT=(Vcc*R2)/(R1+R2);
RT=(R1*R2)/(R1+R2);
Rc=1;//kohm
Re=1.0;

//for hfe=50
Ic1=(VT-Vbe)/(RT/hfe1+Re*(1/hfe1+1));Ic1=4.31;
Vce1=Vcc-(Ic1*Rc)-Re*(Ic1/hfe1+Ic1);
printf("\nfor hfe=50,Vce=%.2f V,Ic=%.2f mA",Vce1,Ic1);

//for hfe=150
Ic2=(VT-Vbe)/(RT/hfe2+Re*(1/hfe2+1));Ic2=4.74;
Vce2=Vcc-(Ic2*Rc)-Re*(Ic2/hfe2+Ic2);
printf("\nfor hfe=150,Vce=%.2f V,Ic=%.2f mA",(Vce2),Ic2);

Vb= Vcc*(R2/(R1+R2));
Ve=Vb-Vbe;
Ie=Vb/Re;
Vc=ceil(Vcc-(Ie*Rc));
printf('\nCollector voltage is approximately %d V',Vc)

