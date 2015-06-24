clc
//Initialization of variables
A=[-1 -1 -1 ]
B=[1 1 -1]
//calculations
Ad=sqrt(1+1+1)
Bd=sqrt(1+1+1)
dot=A.*B /(Ad*Bd) 
theta=acosd(dot)
//results
printf("Angle = %.2f degrees",theta(1,1))
