clear
//Given
I=10                //A
A=4*10**-6                 //m**2
e=1.6*10**-19                //C
n=8*10**28                     //m**-3
l=4

//Calculation
Vd=I/(n*A*e)
t=l/Vd

//Result
printf("\n Time required by an electron is  %0.3f  *10**4 S", t*10**-4)
