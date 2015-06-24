clear ;
clc;
// Example 9.7
printf('Example 9.7\n\n');
// Page no. 243
// Solution

//Basis: 3 g mol H2 by reaction (a)
// 0.50 g mol C2H4 by reaction (b)
// by analysing reaction (a)  0.50 g mol C2H4 corresponds to 0.50 g mol H2 produced in reaction (b)
// By using reaction (a)
H2_a = 3-0.50 ;// H2 produced in reaction (a)
C_a = (2/3)*H2_a ;// Nanotubes(the C) produced by reaction (a)
sel = C_a/0.50 ;// Selectivity of C reletive to C2H4-[g mol C/ g mol C2H4]
printf('Selectivity of C reletive to C2H4 is %.2f g mol C/ g mol C2H4.\n',sel)