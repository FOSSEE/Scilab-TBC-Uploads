clear
//Given
a=60                         //degree
u=4*3.14*10**-7                 //T/A m
Bc=2

//Calculation
//
a=(Bc/2.0)/(tan(60)*180/3.14)
B1=(10**-7*tan(60)*(sin(60*180/3.14)+sin(60*180/3.14)))*10
B=3*B1

//Result
printf("\n Magnetic fieldat the centroid of the triangle is %0.0f  *10**-7 T",B*10**7)
