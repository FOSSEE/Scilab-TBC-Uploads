clc
f=50
n2=50               //Assigning values to parameters
n1=500
kva=25
e1=3000
k=n2/n1
i1=kva*1000/e1
i2=i1/k
e2=k*e1
fm=e1/(4.44*f*n1)
disp("Amperes",i1,"The primary full load current is");
disp("Amperes",i2,"The secondary full load current is");
disp("Volts",e2,"The secondary emf is");
disp("Wb",fm,"The maximum flux is");