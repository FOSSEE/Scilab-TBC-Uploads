clear
//Given
R=2                   //ohm
R1=2.4                 //ohm
V=4                    //V
E=1.5

//Calculation
R11=R+R1
I=V/R11
Vab=I*R
K=Vab
l=E/K

//Result
printf("\n Length for zero galvanometer deflection is %0.3f  m", l)
