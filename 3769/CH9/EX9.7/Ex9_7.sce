clear
//Given
M=5*10**6               //ev
e=1.6*10**-19
m=1.6*10**-27
B=1.5
q=1.6*10**-19

//Calculation
//
v=sqrt((2*M*e)/m)
F=q*v*B*sin(90*3.14/180.0)

//Result
printf("\n Magnitude of the force is %0.2f *10**-12 N",F*10**12)
