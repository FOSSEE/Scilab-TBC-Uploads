clc; funcprot(0); //Example 17.2

//Initializing the variables
Ma = 4;
gma = 1.4;
At = 500; // in mm

//Calculations
N = 1 + (gma-1)*Ma^2/2;
D = (gma+1)/2 ;
A = At*(N/D)^((gma+1)/(2*(gma-1)))/Ma;

disp(A, "Area of test section (mm2):");