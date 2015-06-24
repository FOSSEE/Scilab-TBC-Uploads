// Illustration 2.1
// Section 2-3 in the book
// Demonstrating Series,Parallel and feedback connection of Linear Systems

clear; clc; close;

// Define Polynomials in variable 's'
// Please NOTE : The list of coeficients has to be given in
//                INCREASING  powers of 's', 

n1 = poly( [10] ,'s','c');      
d1 = poly( [10 2 1] ,'s','c'); // 10 + 2*s + s^2

// Alternate method to define transfer functions in scilab
// using '%s'  
s = %s; 
n2 = 5;
d2 = 5 + s;


G1 = syslin('c',n1,d1);    //define continuous LTI systems systems
G2 = syslin('c',n2,d2);

disp(G1,'G1 =');disp(G2,'G2 ='); //display variables on the screen

series   = G1 * G2;
parallel = G1 + G2;
feedback = G1 /. G2 ;  // feedback is via G2.

disp(series,'series =');
disp(parallel,'parallel =');
disp(feedback,'feedback =');
