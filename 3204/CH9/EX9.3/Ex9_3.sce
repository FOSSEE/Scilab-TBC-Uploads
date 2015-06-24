// Initilization of variables
W=1 //kN // load on the truss at joint D
theta=45 //degree // angle made by the members AC & BD with the horizontal
Lab=1 //m 
Lcd=1 //m // here Lcd= the distance from B to the line of extension drawn from 1kN force on the horizontal
// Calculations 
// (1) JOINT E
// Here the joint E is in equilibrium under two forces Fec & Fed which are non-collinear. Hence they must be 0. i.e Fec=Fed=0 
Fec=0
Fed=0
// (2) JOINT D
Fdb=W/sind(theta) // kN // (C)// sum Fy=0
Fdc=Fdb*cosd(theta) // kN // (T) // sum Fx=0
// (3) JOINT C
Fca=Fdc/sind(theta) // kN // (T) // sum Fx=0
Fcb=-(Fca*sind(theta)) // kN // (C) // sum Fy=0
// Results
clc
printf('The axial force in the member DC (Fdc) is %f kN \n',Fdc)
printf('The axial force in the member DB (Fdb) is %f kN \n',Fdb)
printf('The axial force in the member CA (Fca) is %f kN \n',Fca)
printf('The axial force in the member CB (Fcb) is %f kN \n',Fcb)
printf('The axial force in the member EC (Fec) is %f kN \n',Fec)
printf('The axial force in the member ED (Fed) is %f kN \n',Fed)
// Here -ve sign indicates COMPRESSIVE force & +ve indicates TENSILE force
