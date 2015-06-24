clear ;
clc;
// Example 11.1
printf('Example 11.1\n\n');
// Page no. 311
// Solution

// Composition of each stream
w_A1 = 1 ;//concentration of A in 1
w_B2 = 1 ;//  concentration of B in 2
w_A3 = 0.8 ;// concentration of A in 3
w_B3 = 0.2 ;// concentration of B in 3
w_C4 = 1 ;// concentration of C in 4
w_A5  = 0.571 ;//concentration of A in 5
w_B5  = 0.143 ;//concentration of B in 5
w_C5  =  0.286 ;//concentration of C in 5
w_D6 = 1;// concentration of D in 6
w_A7 = 0.714 ;// concentration of A in 7
w_B7 = 0.286 ;// concentration of B in 7
w_B8 = 0.333 ;//concentration of B in 8
w_C8 = .667 ;//concentration of C in 8

us1 = 2 ;// Species involved in unit 1
us2 = 3 ;// Species involved in unit 2
us3 = 4 ;// Species involved in unit 3
total_sp = us1+us2+us3 ;//  Total species in system

// Element balance of all systems
printf('Number of possible equations are 9, they are as follows- \n');
printf(' Subsystem 1\n');
printf('       A: F1*w_A1+F2*0  =  F3*w_A3     (a)\n');
printf('       B:F1*0 + F2*w_B2 = F3*w_B3      (b)\n');
printf(' Subsystem 2\n');
printf('       A: F3*w_A3+F4*0  =  F5*w_A5     (c)\n');
printf('       B:F3*w_B3 + F4*0 = F5*w_B5      (d)\n');
printf('       C: F3*0+F4*w_C4 = F5*w_C5       (e)\n');
printf(' Subsystem 3\n');
printf('       A: F5*w_A5+F6*0  =  F7*w_A7+F8*0     (f)\n');
printf('       B:F5*w_B5 + F6*0 = F7*0+F8*w_B8      (g)\n');
printf('       C: F5*w_C5+F6*0 = F7*0+F8*w_C8       (h)\n');
printf('       D:F5*w_C5+F6*0 = F7*0+F8*w_C8        (i)\n');
printf('\n The above equations do not form a unique set\n');

// By inspection we can see that only 7 equations are independent 
//Independent Equations are: 
// Subsystem 1
//A: F1*w_A1+F2*0  =  F3*w_A3 (a)
//B:F1*0 + F2*w_B2 = F3*w_B3 (b)
//Subsystem 2
//A: F3*w_A3+F4*0  =  F5*w_A5 (c)
// C: F3*0+F4*w_C4 = F5*w_C5 (e)
// Subsystem 3
//A: F5*w_A5+F6*0  =  F7*w_A7+F8*0 (f)
//B:F5*w_B5 + F6*0 = F7*0+F8*w_B8 (g)
//D:F5*w_C5+F6*0 = F7*0+F8*w_C8 (i)

printf('\n Number of independent equations are 7 \n');