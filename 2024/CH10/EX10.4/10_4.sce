clc
//Initialization of variables
c1=4.97 //Btu/mol R
c2=5.02 //Btu/mol R
n1=2
n2=1
T1=86.6+460 //R
T2=50+460 //R
//calculations
du=(n1*c1+n2*c2)*(T2-T1)
ds=(n1*c1+n2*c2)*log(T2/T1)
//results
printf("Change in internal energy = %d Btu",du)
printf("\n Change in entropy = %.3f Btu/R",ds)
