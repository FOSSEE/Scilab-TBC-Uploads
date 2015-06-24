clc
disp("Example 4.28")
printf("\n")
disp("Calculate suitable values of R1,Rp,R2 for SCR in circuit Fig 4.12")
printf("Given\n")
printf("Resistance are in ohms \nCurrent are in Ampere \n Voltage sources are in volt\n")
//gate current
Ig=250*10^-6
//gate trigger voltage
Vgt=0.75
Vd=0.7
//supply voltage
Vs=40
//peak value of supply voltage
Vm=sqrt(2)*Vs
//supply voltage at angle 10deg
Vs1=Vm*sin(10*%pi/180)
//supply voltage at angle 90deg
Vs2=Vm*sin(90*%pi/180)
Vt=Vd+Vgt
//to trigger SCR at 10deg moving contact of Rp is at top
//from circuit
VR1=Vs1-Vt
//choose I1min>>Ig
I1min=1.5*10^-3
R1=VR1/I1min
//since Ig<<I1min, current through Rp & R2 is I1min
RpPLUSR2=Vt/I1min
//to trigger SCR at 90deg moving contact of Rp is at bottom
VR2=Vt
I1=Vs2/(R1+RpPLUSR2)
R2=Vt/I1
Rp=RpPLUSR2-R2
printf("Resistance R1 is %f ohm \n",R1)
printf("Resistance R2 is %f ohm \n",R2)
printf("Resistance Rp is %f ohm \n",Rp)


