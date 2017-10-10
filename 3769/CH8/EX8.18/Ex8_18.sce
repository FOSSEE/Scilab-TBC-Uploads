clear
//Given
a=5*10**-2
I=50
e=1.6*10**-19
B1=10**7
u=4*3.14*10**-7                     //T/A m

//Calculation
//
B=u*I/(2*%pi*a)
F=e*B1*B

//Result
printf("\n (i) Force on electron when velocity is towards the wire %0.1f *10**-16 N",F*10**16)
printf("\n (ii) Force on electron when velocity is parallel to the wire %0.1f *10**-16 N",F*10**16)
printf("\n (iii) Force on electron when velocity is perpendicular to the wire is zero")
