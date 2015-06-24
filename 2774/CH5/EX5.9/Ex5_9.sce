clc
// initialization of variables
T1=350+273 // initial temperature in kelvin
P1=1200 // initial pressure in kPa
P2=140 // final pressure in kPa
k=1.4 // polytopic index for air

//solution
// The values are taken from table E.1
Pr660=23.13// relative pressure @ 660K
Pr620=18.36// relative pressure @ 620K
Pr1=((Pr660-Pr620)*3/40)+Pr620 // relative pressure by interpolation
Pr2=Pr1*(P2/P1) // relative pressure at state 2

Pr340=2.149 // relative pressure @ 340K
Pr380=3.176 // relative pressure @ 380K
T2=((Pr2-Pr340)/(Pr380-Pr340))*40+340 // interpolating final temperature from table E.1

// now interpolating u1 AND u2 from table E.1
u620=451.0// specific internal energy @ 620k
u660=481.0// specific internal energy @ 660k
u1=(u660-u620)*(3/40)+u620 // initial internal energy

u380=271.7 //specific internal energy @ 380k
u340=242.8 //specific internal energy @ 340k
u2=((Pr2-Pr340)/(Pr380-Pr340))*(u380-u340)+u340 // final internal energy

w=u2-u1 // work= change in internal energy
printf(" The work done by gas is %.0f kJ/kg",w)
// The answer is slightly different as values are approximated in textbook



