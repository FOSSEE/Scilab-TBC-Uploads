//Engineering and Chemical Thermodynamics
//Example 4.4
//Page no :185

clear ; clc ;
//Given 
Psat_wat_25 = 3.169 * 10^3 ;// From steam table
Psat_wat_50 = 1.235 * 10^4 ;// From steam table
Psat_wat_100 = 1.014 * 10^5 ;// From steam table
A =11.9673 ;
B = 3626.55 ;
C = -34.29 ;
T1 = 25 ; //[*C]
T2 = 50 ; //[*C]
T3 = 100 ; //[*C]

M = [T1 , Psat_wat_25 ; T2 , Psat_wat_50 ; T3 , Psat_wat_100];
for i=1:3
    M(i,3) = exp(A - B / (M(i,1) + 273 + C)) * 10^5 ;
end
disp(" Example: 4.4   Page no : 185") ;
disp("  T(*C)   Water(Pa)   Methanol(Pa)") ;
disp(M);

//Solution(1) :
printf("\n(1)\n     Water can form two hydrogen bonds . While CH4Oh can form only one . Thus at a given temperature , water has stronger attractive forces in the liquid and a lower vapour pressure .\n\n")

//Solution(2):
printf("(2)\n      Since the Maxwell-Boltzmann distribution depends exponentially on temperature , Psat also increses exponentially with temperature .")