clear
//

//variable declaration

//A circular steel pipe of external diameter 60 mm and thickness 8 mm is used as a simply supported beam over an effective span of 2 m. If permissible stress in steel is 150 N/mm^2, 

D=(60)            //external diameter,mm
d=(44)             //Thickness,mm

I=(%pi*((D**4)-(d**4)))/64         //Area moment of inertia**mm^4
Ymax=(30)                       //extreme fibre distance,mm

Z=I/Ymax  
fper=(150)

Mmax=fper*Z

//Let maximum load it can carry be P kN.
L=(2)
P=(4*Mmax)/(L*1000000)

printf("\n  P= %0.2f  KN",P)
