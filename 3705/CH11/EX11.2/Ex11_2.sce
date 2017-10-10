
clear//

//Variable Declaration
V=1000 //Shear Force in lb
t=0.5 //Thickness in inches
wf=12 //Width of the flange in inches
d=8 //Depth of the section in inches
//Rest ALL DATA is similar to previous problem

//Calcualtions
I=t*wf**3*12**-1+t*d**3*12**-1 //Moment of Inertia

//Part 1
q1=V*t*t*wf*3*I**-1 //Shear Flow in lb/in
q2=V*t*t*d*2*I**-1 //Shear FLow in lb/in
V1=2*3**-1*q1*wf //Shear force carried in lb
V2=2*3**-1*q2*d //Shear force carried in lb

//Part 2
e=8*V2*V**-1 //Eccentricity in inches

//Result
printf("\n The Shear Force carried by Flanges is")
printf("\n Top Flange= %0.1f lb Bottom Flange= %0.1f lb",V1,V2)
printf("\n The eccentricity is %0.3f in",e)
