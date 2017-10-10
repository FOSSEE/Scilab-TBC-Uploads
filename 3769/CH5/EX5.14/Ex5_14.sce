clear
//Given
r=1
r1=0.5
R1=0.15                    //ohm

//Calculation
//
A1=(%pi/4.0)*r**2
A2=(%pi/4.0)*r1**2
l=A1/A2
R=l*l
R2=R*R1

//Result
printf("\n New resistance of the wire is  %0.3f  ohm", R2)
