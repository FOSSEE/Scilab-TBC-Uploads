clc
n2=40               //Assigning values to parameters
n1=600
kva=50
e1=2200
e2=e1*n2/n1
i1=kva*1000/e1
i2=kva*1000/e2
disp("Amperes",i1,"The primary full load current is");
disp("Amperes",i2,"The secondary full load current is");
disp("Volts",e2,"The secondary voltage at node is");