//chapter 34
//example3
clc
//given
i1=100 //in amp
i2=20 //in amp
W=0.073 //weight of second wire W=F/l in nt/m
u0=4*%pi*10^-7 //in weber/amp-m
//calculations
d=u0*i1*i2/(2*%pi*W)
disp(d,"seperation between two wires in metres")
