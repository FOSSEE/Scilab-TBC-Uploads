clear
//Given 
l = 400    //mm - Length 
b = 300    //mm - breath 
F = 20     //KN _ the force applied on the beam 
F_d = 0.75 //KN-m - The force distribution 
d = 2      //mt - the point of interest from the free end
//calculations 
//From moment diagram
M = F*d - F_d*d*1
I = b*(l**3)/12 //mm4 - Bending moment diagram 
c = l/2         // the stress max at this C
S = I/c         //The maximum shear stress 
shear_max = M*(10**6)/S //MPa -  the maximum stress 
printf("\n The maximum stress at 2 mt is %0.2f MPa",shear_max)
