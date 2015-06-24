//chapter 31
//example3
clc
//given
disp("Dimensions of rectangular carbon block are 1.0cm*1.0cm*50cm")
l=1.0*10^-2 //in meter
b=1.0*10^-2//in meter
h=50*10^-2 //in meter
p=3.5*10^-5 //resisivity of carbon in ohm-m
//(a)Resistance b/w two square ends
l1=h
A1=b*l
R1=p*l1/A1
disp(R1,"(a) Resistance measured b/w the two square ends in ohm is")
l2=l
A2=b*h
R2=p*l2/A2
disp(R2,"(a) Resistance measured b/w the two opposite rectangular faces in ohm is")

