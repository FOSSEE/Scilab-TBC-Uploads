clc
r1=0.2          //Assigning values to parameters
x1=0.75
r2=0.05
x2=0.2
pf=0.8
e2=125
e1=250
t=acosd(0.8)
k=e2/e1
kva=5
i2=kva*1000/e2
r02=r2+k*k*r1
x02=x2+k*k*x1
pr1=(i2*r02*cosd(t)-i2*x02*sind(t))*100/e2
v2=e2-(e2*pr1/100)
disp(pr1,"The percentage regulation at full load 0.8 pf leading is");
disp("Volts",v2,"The secondary terminal voltage is");