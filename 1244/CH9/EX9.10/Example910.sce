
// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Principles of Heat transfer, Seventh Edition, Frank Kreith, Raj M Manglik and Mark S Bohn, Chapter 9, Example 8")
//Window area in ft^2
A1=6*20;
//Second area in ft^2
A2=4*20;
//Assuming A5=A1+A2
//Area in ft^2
A5=A1+A2;

//From Fig. 9.27
//Shape Factors required
F56=0.19;
F26=0.32;
F53=0.08;
F23=0.19;

disp("Shape factor")
//Shape factor
F14=(A5*F56-A2*F26-A5*F53+A2*F23)/A1
disp("Thus,only about 10% of the light passing through the window will impinge on the floor area A4")
