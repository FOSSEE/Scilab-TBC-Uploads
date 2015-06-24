clc
disp("Example 4.29")
printf("\n")
disp("Calculate suitable values of R1,Rp,R2 for SCR in circuit Fig 4.12")
printf("Given\n")
printf("Resistance are in ohms \nCurrent are in Ampere \n Voltage sources are in volt\n")
//gate current
Ig=600*10^-6
//gate trigger voltage
Vg=0.7
Vd=0.7
//supply voltage
Vs=230
//peak value of supply voltage
Vm=sqrt(2)*Vs
//supply voltage at angle 8deg
Vs1=Vm*sin(8*%pi/180)
//supply voltage at angle 90deg
Vs2=Vm*sin(90*%pi/180)
//to trigger SCR at 10deg moving contact of Rp is at top
//from circuit
VR1=Vs1-Vg
//choose I1min>>Ig
I1min=6*10^-3
R1=VR1/I1min
//since Ig<<I1min, current through Rp & R2 is I1min
RpPLUSR2=Vg/I1min
//to trigger SCR at 90deg moving contact of Rp is at bottom
VR2=Vt
I1=Vs2/(R1+RpPLUSR2)
R2=Vg/I1
Rp=RpPLUSR2-R2
printf("Resistance R1 is %f ohm \n",R1)
printf("Resistance R2 is %f ohm \n",R2)
printf("Resistance Rp is %f ohm \n",Rp)
