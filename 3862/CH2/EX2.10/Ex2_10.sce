clear
//

//variable declaration

PA=800.0     //Vertical down loading at A,N
PC=400.0     //vertical up loading at B,N
HD=600.0     //Horizontal left loading at A,N
HB=200.0     //Horizontal right loading at B,N
a=1.0        //length of side,m
 
//sum of vertical Fy & sum of horizontal forces Fx is zero
//Assume direction of Fx is right
//Assume direction of Fy is up
Fx=HB-HD
Fy=PC-PA


R=sqrt((Fx**2)+(Fy**2))
printf("\n R= %0.2f  N",R)

theta=atan(Fy/Fx)*180/%pi 
printf("\n theta= %0.0f  °",theta)

//moment at A

MA=PC*a+HD*a

//Let x be the distance from A along x axis, where resultant cuts AB.

x=MA/Fy

printf("\n x= %0.1f  m",(-x))
