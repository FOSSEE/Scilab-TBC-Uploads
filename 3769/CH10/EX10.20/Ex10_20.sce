clear
//Given
H=0.28                        //G
V=0.40                        //G

//Calculation
//
A=V/H
a=atan(A)*180/3.14
R=sqrt(H**2+V**2)

//Result
printf("\n (i) Angle of dip is %0.0f  Degree",a)
printf("\n (ii) earths total magnetic field is %0.2f  G",R)
