clear
//

//variable declaration

PB=20.0       //loading at B,KN
PC=30.0       //loading at C,KN
PD=40.0       //loading at D,KN
PA=60.0        //loading at E,KN
AB=1.0
BC=2.0
CD=1.0
//length are in m

// Let x and y axes be selected
//sum of vertical Fy & sum of horizontal forces Fx is zero
//Assume direction of Fx is right
//Assume direction of Fy is up
Rx=0
Ry=PA+PB+PC+PD

R=sqrt((Rx**2)+(Ry**2))
printf("\n R= %0.2f  KN",R)


//Taking clockwise moment as positive, 
//sum of moment at A

MA=(0)*PA+(AB)*PB+PC*(AB+BC)+PD*(AB+BC+CD)
printf("\n MA= %0.2f  KN-m",MA)

// The distance of resultant from A is,

x=MA/R
printf("\n x= %0.1f  m",x)
