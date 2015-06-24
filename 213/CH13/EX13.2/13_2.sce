//To design the gears
clc
//Given:
x=600, pc=25 //mm
N1=360, N2=120 //rpm
//Solution:
//Calculating the pitch circle diameters of each gear
//Speed ratio, N1/N2 = d2/d1, or N1*d1-N2*d2 = 0                                .....(i)
//Centre distance between the shafts, x = 1/2*(d1+d2), or d1+d2 = 600*2         .....(ii)
A=[N1 -N2; 1 1]
B=[0; 600*2]
V=A \ B
d1=V(1) //mm
d2=V(2) //mm
//Calculating the number of teeth on the first gear
T1=round(%pi*d1/pc)
//Calculating the number of teeth on the second gear
T2=int(%pi*d2/pc+1)
//Calculating the pitch circle diameter of the first gear
d1dash=T1*pc/%pi //mm
//Calculating the pitch circle diameter of the second gear
d2dash=T2*pc/%pi //mm
//Calculating the exact distance between the two shafts
xdash=(d1dash+d2dash)/2 //mm
//Results:
printf("\n\n The number of teeth on the first and second gear must be %d and %d and their pitch circle diameters must be %.2f mm and %.1f mm respectively.\n\n",T1,T2,d1dash,d2dash)
printf(" The exact distance between the two shafts must be %.2f mm.\n\n",xdash)