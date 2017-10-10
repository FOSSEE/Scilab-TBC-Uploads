//to find the maximum acceleration of car on each gear
//gravitaional force (g)=32.2 ft/s^2
clc
printf("\n")
//let
//S=displacement of car from rest with uniform acceleration a, the engine torque T assumed to remain ocnstant
//v=final speed ofcar
//G=gear ratio
//r=effective radius
//n=efficiency of transmission
//M=mass of the car
//Ia and Ib=moments of inertia of road whels and engine 
//formulas => F=29.5nG ; Me= 1648+$.54nG^2 ; a=32.2 F/Me
//given
G1=22.5
G2=12.5
G3=7.3
G4=5.4
n=.82//for 1st ,2nd and 3rd gear
n4=.9//for 4th gear
F1=29.5*n*G1
F2=29.5*n*G2
F3=29.5*n*G3
F4=29.5*n4*G4
//on reduction and putting values we get
Me1=1648+4.54*n*G1^2
Me2=1648+4.54*n*G2^2
Me3=1648+4.54*n*G3^2
Me4=1648+4.54*n4*G4^2
a1=32.2*F1/Me1
a2=32.2*F2/Me2
a3=32.2*F3/Me3
a4=32.2*F4/Me4
printf("Maximum acceleration of car on top gear is %.2f ft/s^2 \n",a4)
printf("Maximum acceleration of car on third gear is %.2f ft/s^2 \n",a3)
printf("Maximum acceleration of car on second gear is %.2f ft/s^2 \n",a2)
printf("Maximum acceleration of car on first gear is %.2f ft/s^2 \n",a1)
