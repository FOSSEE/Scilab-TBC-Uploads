//Engineering and Chemical Thermodynamics
//Example 8.2
//Page no :369

clear ; clc ;
//Given
A_C5H12 = 9.2131 ; //From table E8.2A
B_C5H12 = 2477.07 ; //From table E8.2A
C_C5H12 = -39.94 ; //From table E8.2A
A_C6H12 = 9.1325 ; //From table E8.2A
B_C6H12 = 2766.63 ; //From table E8.2A
C_C6H12 = -50.50 ; //From table E8.2A
A_C6H14 = 9.2164 ; //From table E8.2A
B_C6H14 = 2697.55 ; //From table E8.2A
C_C6H14 = -48.78 ; //From table E8.2A
A_C7H16 = 9.2535 ; //From table E8.2A
B_C7H16 = 2911.32 ; //From table E8.2A
C_C7H16 = -56.51 ; //From table E8.2A

x_C5H12 = 0.3 ;
x_C6H12 = 0.3 ;
x_C6H14 = 0.2 ;
x_C7H16 = 0.2 ;

function y82 = f82(T), y82 = -1 + (x_C5H12 * exp(A_C5H12 - B_C5H12 / (T + C_C5H12)) + x_C6H12 * exp(A_C6H12 - B_C6H12 / (T + C_C6H12)) + x_C6H14 * exp(A_C6H14 - B_C6H14 / (T + C_C6H14)) + x_C5H12 * exp(A_C5H12 - B_C5H12 / (T + C_C5H12)) + x_C7H16 * exp(A_C7H16 - B_C7H16 / (T + C_C7H16)));
endfunction ;
y =fsolve([300],f82) ;
disp(" Example: 8.2   Page no : 369") ;
printf("\n    The temperature at which the liquid develops the first bubble of vapour = %d K",y); 