//Engineering and Chemical Thermodynamics
//Example 2.5
//Page no :55

clear ; clc

//Solution(a)
//Unsteady state analysis
h_cap_in = 3241 ; //[kJ/kg] , From steam table
P_final = 10 ; //[MPa]

//From Eqn. Eq2.5A , Eq2.5B , Eq2.5C we get
u_cap_2 = h_cap_in ;
//At codition of P = 10MPa , u_cap_2 = 3241 kJ/kg the final temperature of the system is
T2 = 600 ; // From steam table .No calculation is involved .
disp(" Example: 2.5   Page no : 55") ;
printf('\n      (a)\n           The final temperature of the system = %g *C\n',T2);

//Closed system analysis
//From equation E2.5E , E2.5F , E2.6G we get
u_cap_2 = h_cap_in ;
// So temperature is T2 = 600*C (From table).

//Solution(b)
disp("     (b)   The temperature of the fluid increases in the system due to the receipent of flow work .")