clc;funcprot(0)//Example 8.1

//Initializing the variables
P1 = 57;                 //Power in SI
M = 1/14.6;             //Ratio of mass in SI/British
L = 1/0.3048;         //Ratio of length in SI/British
T = 1;                //Ratio of time in SI/British

//Calculations

P2 = M*(L^2)*(T^-3)*P1 ;   //Power in kW
P2/P1;

disp(P2/P1,"Conversion Factor :",P2, 'Power(Kw)  :' );