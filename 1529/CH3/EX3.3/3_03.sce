//Chapter 3, Problem 3
clc;
R=0.16;                 //resistance of wire
l=8;                    //length of wire
a=3;                    //area of cross-section
//If the cross-sectional area is reduced to 1/3 of its original area then the length must be tripled to 3×8,
l1=3*l;
a1=a/3;
k=R*a/l;                    //calculating coefficient of proportionality
R1=k*(l1/a1);               //calculating new resistance with reduced area of cross-section
printf("Resistance of wire = %f ohm",R1);
