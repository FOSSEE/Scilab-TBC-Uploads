clc;
//Example 11.7
//page no 118
printf("Example 11.7 page no 118\n\n");
//given
T_c=343// critical temperature,deg R
P_c=45.4//critical pressure,atm
//emplying redlich kwong (R-K)equation
R=0.73//gas constant 
a=round(0.42748*R^2*T_c^2.5/P_c)//R-k constant
b=0.08664*R*T_c/P_c//R-k constant
 //   V_new=[[490/(V-b)]-[a/(25.9*V*V+b)]]/10
 // V=V_new
//by trial and error method
V=48.8
printf("\n Volume V=%f ft^3/lbmol ",V);


