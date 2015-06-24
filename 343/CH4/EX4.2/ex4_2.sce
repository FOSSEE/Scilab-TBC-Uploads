clc
e1=3200         //Assigning values to parameters
f=50
bm=1.2
e2=400
n2=111
kva=80
n1=e1*n2/e2
i2=kva*1000/e2
a=e2/(4.44*f*n2*bm)
disp(n1,"number of turns on primary windings is");
disp("Amperes",i2,"The secondary full load current is");
disp("meter square",a,"The cross-sectional area is");