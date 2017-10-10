clc; funcprot(0);
//Example 13.1 Struts

// Initialisation of variables
V = 100;
l = 6;
n = 4;
D_rnd = 3/4;
D_stln = 5/8;

// Calculations
Drag_rnd = 0.00026*D_rnd*V^2*l*n; 
Drag_stln = 0.0000175*D_stln*V^2*l*n; 

//Results 
disp(Drag_stln,"Drag due to streamlined struts(lb) :", Drag_rnd, "Drag due to round struts(lb) :");
