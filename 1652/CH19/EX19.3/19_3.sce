clc
//Initialization of variables
r1=0.850
r2=0.50
//calculations
Da=-log10(r1)
Db=-log10(r2)
D=Da+Db
r3=10^(-D)
//results
printf("Transmittance of solution = %.3f ",r3)
