// Scilab Code Ex10.3: Page-507 (2011)
clc;clear;
q = 2e-008;    
q1 = q;        // Charge at first corner, C
q2 = -2*q;     // Charge at second corner, C
q3 = 3*q;      // Charge at third corner, C
q4 = 2*q;      // Charge at fourth corner, C
d = 1;....    // Side of the square, m
r = d*sin(2*%pi/8);....// Distance of centre of the square from each corner, m
V = (q1+q2+q3+q4)*(9e+009)/r;.....// Elecric potential at the centre of the square, V 
printf("\nThe electric potential at the centre of the square = %4d V", V); 

// Result
// The electric potential at the centre of square = 1018 V 





