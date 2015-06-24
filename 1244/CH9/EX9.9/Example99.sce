
// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Principles of Heat transfer, Seventh Edition, Frank Kreith, Raj M Manglik and Mark S Bohn, Chapter 9, Example 9")
//Window arrangement consists of a long opening with dimensions
//Height in meters
h=1;
//Length in meters
l=5;
//width of table in meters
w=2;
//Assuming that window and table are sufficiently long and applying crossed string method, we get
//Distance ab in m
ab=0;
//Distance cb in m
cb=w;
//Distance ad in m
ad=h;
//Distance cd in m
cd=sqrt(l);

disp("Shape factor between the window and the table")
//Shape factor between the window and the table
F_12=0.5*(ad+cb-cd)
