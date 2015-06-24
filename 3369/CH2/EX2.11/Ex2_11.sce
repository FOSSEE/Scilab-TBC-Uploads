//Chapter 2, Exmaple 11, page 75
//Calculate the potential within the mesh
clc
clear
//Based on figure 2.38(b)
//equations are obtained using Eq.2.46
A1 = 1/2*(0.54+0.16)
A2 = 1/2*(0.91+0.14)
S = [0.5571 -0.4571 -0.1;-0.4751 0.828 0.3667;-0.1 0.667 0.4667]
//By obtaining the elements of the global stiffness matrix(Sadiku,1994)
//and by emplying the Eq.2.49(a)
S1 = [1.25 -0.014;-0.014 0.8381]
S2 = [-0.7786 -0.4571;-0.4571 -0.3667]
Phi13 = [0 ;10]
val1 = S2*Phi13
Phi24 = S1\val1
disp(-Phi24,"The values of Phi2 and Phi4 are:")

//Answers may vary due to round of error  

