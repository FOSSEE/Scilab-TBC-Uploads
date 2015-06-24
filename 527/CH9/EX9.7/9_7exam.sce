//Engineering and Chemical Thermodynamics
//Example 9.7
//Page no :453

clear ; clc ;
//Given 
del_h0_f_NH3 = -46.11 ; // [kJ/mol],From table E9.7
del_h0_f_N2 = 0 ; // [kJ/mol],From table E9.7
del_h0_f_H2 = 0 ; // [kJ/mol],From table E9.7
del_g0_f_NH3 = -16.45 ; // [kJ/mol],From table E9.7
del_g0_f_N2 = 0 ; // [kJ/mol],From table E9.7
del_g0_f_H2 = 0 ; // [kJ/mol],From table E9.7
n_NH3 = 2 ;
n_N2 = -1 ;
n_H2 = -3 ;
A_NH3 = 3.578 ; B_NH3 = 3.02 * 10^-3 ; D_NH3 = -0.186 * 10^5 ; 
A_N2 = 3.280 ; B_N2 = 0.593 * 10^-3 ; D_N2 = 0.040 * 10^5 ;
A_H2 = 3.249 ; B_H2 = 0.422 * 10^-3 ; D_H2 = 0.083 * 10^5 ;
R = 8.314 ;
T = 298 ;
T2 = 773 ;
P = 1 ; //[bat]

Del_h0_rxn = (n_NH3 * del_h0_f_NH3 + n_N2 * del_h0_f_N2 + n_H2 * del_h0_f_H2) * 10^3 ;
Del_g0_rxn = (n_NH3 * del_g0_f_NH3 + n_N2 * del_g0_f_N2 + n_H2 * del_g0_f_H2) * 10^3 ;
del_A = n_NH3 * A_NH3 + n_N2 * A_N2 + n_H2 * A_H2 ;
del_B = n_NH3 * B_NH3 + n_N2 * B_N2 + n_H2 * B_H2 ;
del_D = n_NH3 * D_NH3 + n_N2 * D_N2 + n_H2 * D_H2 ;

K_298 = exp( - Del_g0_rxn / ( R * T)) ;
K_T = K_298 * exp( - Del_h0_rxn / R * (1 / T2 - 1 / T)) ;
A = K_T * P^2 *27 -16 ;
B = 64 - K_T * P^2 * 108 ;
C = -64 + K_T * P^2 * 162 ;
D = -108 * K_T * P^2 ;
E = 27 * K_T * P^2 ;

//(a)
mycoeff =[E , D ,C , B ,A];
p = poly(mycoeff , "x","coeff") ;
M = roots(p);

for i = 1:3 
    isreal(M(i,1)) ;
    if ans == %f then
        y = M(i,1) / M(i+1,1) - 1 ;
        sign(y) ;
        if ans == %t then
            x = M(i,1) ;
        else
            x = M(i+1,1) ;
            
        end
    end
end
disp(" Example: 9.7   Page no : 453") ;
printf("\n    (a)\n        Extent of reaction = %.3f \n",x);

//(b)
X = (-Del_h0_rxn  / R + del_A * T + del_B / 2 * T^2 - del_D / T) * (1/T2 - 1/T) + del_A * log(T2 / T) + del_B / 2 * (T2 - T) + del_D / 2 * (1/(T2^2) - 1/(T^2) );
K_T = K_298 * exp(X) ;

A = K_T * P^2 *27 -16 ;
B = 64 - K_T * P^2 * 108 ;
C = -64 + K_T * P^2 * 162 ;
D = -108 * K_T * P^2 ;
E = 27 * K_T * P^2 ;

mycoeff =[E , D ,C , B ,A];
p1 = poly(mycoeff , "x","coeff") ;
M1 = roots(p1);

for i = 1:3 
    isreal(M1(i,1)) ;
    if ans == %f then
        y = M1(i,1) / M1(i+1,1) - 1 ;
        sign(y) ;
        if ans == %t then
            x1 = M1(i,1) ;
        else
            x1 = M1(i+1,1) ;
            
        end
    end
end
printf("    (b)\n        Extent of reaction = %.3f\n",x1);
disp("      Under these conditions we do not expect to produce an appreciable amount of ammonia .")
