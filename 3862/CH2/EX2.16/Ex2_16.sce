clear
//

//variable declaration
P1=1120.0          //vertical down Loading at 2m distance from O,KN
P2=120.0          //vertical up loading at 4m distance from O,KN
P3=420.0          //vertical downloading at 5m distance from O,KN
H=500.0            //Horizontal loading at 4m ditance from O,KN
ah=4.0
a1=2.0
a2=4.0
a3=5.0
a=7.0
//assume Resulat R at distance x from O,
//sum of vertical Fy & sum of horizontal forces Fx is zero
//Assume direction of Fx is right
//Assume direction of Fy is up
Rx=H
Ry=P1-P2+P3

printf("\n Ry= %0.2f KN  downward",Ry)
 
//Let x be the distance from O where the resultant cuts the base.
//moment at O
x=(H*ah+P1*a1-P2*a2+P3*a3)/(Ry)

printf("\n x= %0.3f  m",x)

printf("\n The resultant passes through the middle third of the base i.e., between 7/3m, and 2*7/3 m.Hence, the dam is safe.")

