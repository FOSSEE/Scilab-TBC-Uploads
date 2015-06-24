clc;funcprot(0);//Example 6.5

//Initializing the variables 
B = 0.7;
H1 = 0.4;
H2 = 1.9;
g =9.81;
z = 1.5 ;            // height of opening

//Calculations
Q_Th = 2/3 *B*sqrt(2*g)*(H2^1.5 - H1^1.5);
A = z*B;
h = 0.5*(H1+H2);
Q = A*sqrt(2*g*h);

disp((Q-Q_Th)*100/Q_Th, "Percentage error in discharge (%):");