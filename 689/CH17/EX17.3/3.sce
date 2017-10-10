clc; funcprot(0);
//Example 17.2 Time to Climb Formula
//Variable Initialisation
h1 = 8000;
h2 = 13600;

//Calculation
H = h1^2/(2*h1-h2);

//Results
disp(H,"Ceiling (ft) : ");
