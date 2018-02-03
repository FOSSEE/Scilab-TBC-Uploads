clear
//

//variable declaration

PB=30.0       //up loading at B,KN
PC=40.0       //down loading at C,KN
PD=50.0       //up loading at D,KN
PA=80.0       //down loading at A,KN
PE=60.0       //down loading at E,KN
AB=2.0
BC=2.0
CD=4.0
DE=2.0
//length are in m

// Let x and y axes be selected
//sum of vertical Fy & sum of horizontal forces Fx is zero
//Assume direction of Fx is right
//Assume direction of Fy is up
Rx=0
Ry=PA-PB+PC-PD+PE

R=sqrt((Rx**2)+(Ry**2))
printf("\n R= %0.2f KN in y-direction",R)


//Taking clockwise moment as positive, 
//sum of moment at A

MA=(0)*PA-(AB)*PB+PC*(AB+BC)-PD*(AB+BC+CD)+PE*(AB+BC+CD+DE)

printf("\n MA= %0.2f  KN-m",MA)

// The distance of resultant from A is,

x=MA/R
printf("\n x= %0.0f  m",x)
