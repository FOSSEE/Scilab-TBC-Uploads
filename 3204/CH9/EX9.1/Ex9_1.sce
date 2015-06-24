// Initilization of variables
W1=2000 //N // load at joint D of the truss
W2=4000 //N // load at joint E of the truss
Lac=6 //m // length of the tie
Lab=3 //m
Lbc=3 //m
theta=60 //degree // interior angles of the truss
// Calculations
// Here A is simply supported & B is  roller support. Now the SUPPORT REACTIONS are given as,
Rc=((W1*(Lab/2))+(W2*(Lab+(Lbc/2))))/Lac //N // Taking moment at A
Ra=W1+W2-Rc //N // Take sum Fy=0
// ANALYSIS OF TRUSS BY METHOD OF JOINT
// ASSUMPTION- we consider the,(1) Forces moving towards each other as +ve i.e TENSILE (T) & (2) Forces moving away from each other as -ve i.e COMPRESSIVE (C)
// (1) JOINT A
Fad=Ra/(sind(theta)) //N //(C) // Using eq'n 2
Fab=Fad*cosd(theta) //N // (T) // Using eq'n 1
// (2) JOINT C
Fce=Rc/(sind(theta)) //N // (C) // Using eq'n 4
Fcb=Fce*cosd(theta) //N // (T) // Using eq'n 3
// (3) JOINT D
Fdb=((Fad*sind(theta))-(W1))/sind(theta) //N  // (T) // Using eq'n 6
Fde=(Fdb*cosd(theta))+(Fad*cosd(theta)) //N // (C) // Using eq'n 5
// (4) JOINT E
Feb=((Fce*cosd(theta))-(Fde))/cosd(theta) //N // (C) // Using eq'n 7
// Results
clc
printf('The Axial Force in member AD (Fad) is %f N \n',Fad)
printf('The Axial Force in member AB (Fab) is %f N \n',Fab)
printf('The Axial Force in member CE (Fce) is %f N \n',Fce)
printf('The Axial Force in member CB (Fcb) is %f N \n',Fcb)
printf('The Axial Force in member DB (Fdb) is %f N \n',Fdb)
printf('The Axial Force in member DE  (Fde)is %f N \n',Fde)
printf('The Axial Force in member EB (Feb) is %f N \n',Feb)
