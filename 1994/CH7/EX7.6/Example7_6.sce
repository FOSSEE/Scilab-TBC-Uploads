//Chapter-7,Example7_6,pg 7-27
I1=10
Im=1*10^-3
Rm=50
//in position-1 R1 is in shunt with R2+R3+Rm
//R1=10^-4(R2+R3+50)......(1)
//in position-2 (R1+R2) is in shunt with R3+Rm
//R1+R2=2*10^-4(R3+50).....(2)
//in position-3 R1+R2+R3 is in shunt with Rm
//R1+R2+R3=0.05............(3)
//from.....(3)
//R1+R2=0.05-R3
//substituting in........(2)
R3=0.04/1.0002
//R2=0.01-R1........(4)
//substituing in (1)
R1=5.00139*10^-3/1.0001
R2=0.01-R1//from........(4)
printf("various sections of aryton shunt are\n")
printf("full scale deflection Im=%.4f A\n",Im)
printf("meter resistance Rm=%.2f ohm\n",Rm)
printf("R1=%.4f ohm\n",R1)
printf("R2=%.4f ohm\n",R2)
printf("R3=%.4f ohm\n",R3)
