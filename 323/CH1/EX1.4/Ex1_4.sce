//Chapter1,Example1.4,Pg1.10
clc;
l1=100 //length of the wire in metres
A1=0.1*10^-6 //area of the wire in metres
p=50*10^-8 //resistivity of the wire in ohm metre
R1=p*l1/A1
printf("\n Resistance before drawing out the wire = %1f ohms\n",R1)
printf("\n Volume of the wire before drawing out=Volume of the wire after drawing out \n")
A2=A1/3
l2=3*l1
R2=p*l2/A2
printf("\n Resistance after drawing out = %1f ohms \n",R2)
a=R2/R1
printf("\n The Ratio of the resistances is = %1f \n",a) 