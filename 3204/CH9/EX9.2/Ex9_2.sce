// Initilization of variables
W1=2000 //N (or 2 kN)// load at joint D of the truss
W2=4000 //N (or 4 kN)// load at joint E of the truss
Lac=6 //m // length of the tie
Lab=3 //m
Lbc=3 //m
theta=60 //degree // interior angles of the truss
// Calculations
// Here A is simply supported & B is  roller support. Now the SUPPORT REACTIONS are given as,
Rc=((W1*(Lab/2))+(W2*(Lab+(Lbc/2))))/Lac //N // Taking moment at A
Ra=W1+W2-Rc //N // Take sum Fy=0
// Calculations
// Calculating the axial forces in the respective members by METHOD OF SECTION
// A section is drawn passing through member DE such that it cuts the respective member. Now consider the equilibrium of the left hand portion of the truss. The three unknown forces are Fde, Fdb, & Fab
// Take moment about B
Fde=((3*Ra)-(W1*Lab*sind(30)))/(3*cosd(30)) //N // (T)
// Results
clc
printf('The axial force in the member DE (Fde)is %f N \n',Fde)
