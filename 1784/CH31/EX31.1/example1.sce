//chapter 31
//example1
clc
//given
d1=0.10 //diameter of aluminium wire in inches
d2=0.064 //diameter of copper wire in inches
i=10 //current carried by composite wire in amperes
A1=%pi*(d1/2)^2 //crosssectional area of aluminium wire in square inches
A2=%pi*(d2/2)^2 //crosssectional area of copper wire in square inches
j1=i/A1
j2=i/A2
disp(j1,"Current density in Aluminium wire in amp/square inches")
disp(j2,"Current density in copper wire in amp/square inches")
