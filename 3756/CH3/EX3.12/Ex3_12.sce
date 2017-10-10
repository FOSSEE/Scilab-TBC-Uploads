clc
//
//
//

//Variable declaration
theta1=12       //rotation of plane
l1=2            //length
theta2=24       //rotation of plane
l2=3            //length
c1=0.08         //Concentration

//Calculations
s=((theta1)/(l1*c1))
c2=((theta2)/(s*l2))
Ms=10*10*10*c2
Ms2=Ms*2

//Result
printf("\n The Mass of sugar dissolved in 2 liter of water for optical rotation 24 deg is %3.1f gm",Ms2)
