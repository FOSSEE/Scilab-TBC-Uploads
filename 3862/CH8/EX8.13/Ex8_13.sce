clear
//

//variable declaration

P=(60)               //load,KN
d=(25)               //diameter,mm
A=%pi*(d**2)/4    //Area**mm^2
L=(200)              //gauge length,mm

delta=0.12         //extension,mm
deltad=0.0045      //contraction in diameter,mm
Linearstrain=delta/L
Lateralstrain=deltad/d

Pr=Lateralstrain/Linearstrain

printf("\n Poissons ratio= %0.1f  ",Pr)

E=(P*1000*L)/(A*delta)

printf("\n E= %0.2f  N/mm^2",E)

G=E/(2*(1+Pr))                      //Rigidity modulus

printf("\n G= %0.1f  N/mm^2",G)

K=E/(3*(1-(2*Pr)))                 //bulk modulus

printf("\n K= %0.2f  N/mm^2",K)
