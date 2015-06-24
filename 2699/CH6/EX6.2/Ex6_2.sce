//EX6_2 PG-6.18
clc
disp("Refer to the figure-6.19 shown")
Es=25;//rms value of the supply voltage 
Vd1=0.7;//diode drop
Vg=0.75;//SCR triggering voltage
alpha1=10;//minimum phase angle 
alpha2=90;//maximum phase angle
Ep=sqrt(2)*Es;//peak value
Es1=Ep*sind(alpha1)
Es2=Ep*sind(alpha2)
Vt=Vd1+Vg;//voltage across R3
printf("\n Position of R2 at top to trigger at 10 degree ")
Vr1=Es1-Vt;//since Vt=Vr2+Vr3
//I1_min>>Ig ie 200 microA
I1_min=1e-3;
R1=Vr1/I1_min;
printf("\n Therefore R1=%.4f kohm \n",R1*1e-3)
printf(" We use R1=4.7 kohm standard value \n\n")
R1=4.7e3;//standard value R1
x=Vt/I1_min;//x=R2+R3
printf(" Position of R2 at bottom to trigger at 90 degree ")
Vr3=Vt;
I1=Es2/(R1+x);
R3=Vr3/I1;
printf("\n Therefore R3=%.2f ohm \n",R3)
printf(" We use R3=270 ohm standard value \n")
R3=270;//standard value R3
R2=x-R3;//since x=R2+R3
printf("\n Therefore R2=%.2f kohm \n",R2*1e-3)
printf(" We use the pot=1.5 kohm standard value for precise judgement")
