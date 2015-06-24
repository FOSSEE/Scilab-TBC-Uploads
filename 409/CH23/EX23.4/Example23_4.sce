clear ;
clc;
// Example 23.4
printf('Example 23.4\n\n');
//page no. 694
// Solution 


//Given
// Cp = a + bT +cT^2
// we will use the least square procedure defined in Appendix M
// step 1 : find expression for sum of square of residuals: Sr = sum(Cpi - a - bTi - cTi^2)^2

// step 2 : Now differentiate Sr wrt to each coefficient to get 3 equation in 3 unknown coefficient , the equations are:

     //n*a + sum(Ti)*b +sum(Ti^2)*c = sum(Cpi)                ...Eqn.(a)
     //sum(Ti)*a + sum(Ti^2)*b +sum(Ti^3)*c = sum(Cpi*Ti)     ...Eqn.(b)
     //sum(Ti^2)*a + sum(Ti^3)*b +sum(Ti^4)*c = sum(Cpi*Ti^2) ...Eqn.(c)
     
// Take all 18 experimenta data in an array Cp
Cpi = [39.87,39.85,39.90;45.16,45.23,45.17;50.72,51.03,50.90;56.85,56.80,57.02;63.01,63.09,63.14;69.52,69.68,69.63] ;// Array of Cpi(Heat capacity) values
// Take corresponding temperatures in array T
Ti = [300,300,300;400,400,400;500,500,500;600,600,600;700,700,700;800,800,800] ;// array of Ti
Ti_sqr = [300^2,300^2,300^2;400^2,400^2,400^2;500^2,500^2,500^2;600^2,600^2,600^2;700^2,700^2,700^2;800^2,800^2,800^2] ;// array of Ti^2
Ti_cub = [300^3,300^3,300^3;400^3,400^3,400^3;500^3,500^3,500^3;600^3,600^3,600^3;700^3,700^3,700^3;800^3,800^3,800^3];// array of Ti^3
Ti_qd = [300^4,300^4,300^4;400^4,400^4,400^4;500^4,500^4,500^4;600^4,600^4,600^4;700^4,700^4,700^4;800^4,800^4,800^4];// array of Ti^4
Cpi_Ti = [39.87*300,39.85*300,39.90*300;45.16*400,45.23*400,45.17*400;50.72*500,51.03*500,50.90*500;56.85*600,56.80*600,57.02*600;63.01*700,63.09*700,63.14*700;69.52*800,69.68*800,69.63*800] ;// Array of Cpi(Heat capacity)*Ti  values
Cpi_Ti_sqr = [39.87*300^2,39.85*300^2,39.90*300^2;45.16*400^2,45.23*400^2,45.17*400^2;50.72*500^2,51.03*500^2,50.90*500^2;56.85*600^2,56.80*600^2,57.02*600^2;63.01*700^2,63.09*700^2,63.14*700^2;69.52*800^2,69.68*800^2,69.63*800^2] ;// Array of Cpi(Heat capacity)*Ti^2  values

n = 18 ;// Number of data

// Solve equations (a),(b) & (c) simultaneously using matrix
a = [n sum(Ti) sum(Ti_sqr);sum(Ti) sum(Ti_sqr) sum(Ti_cub);sum(Ti_sqr) sum(Ti_cub) sum(Ti_qd)] ;// Matrix of coefficients of unknown
b = [sum(Cpi);sum(Cpi_Ti);sum(Cpi_Ti_sqr)] ;// Matrix of constants
x = (a)^-1 * b ;// Matrix of solutions a = x(1), b = x(2) , c = x(3) 

printf('The solution is Cp = %.2f + %.3e T + %.2e T^2 .\nTherefore coefficients are as follows :',x(1),x(2),x(3));
printf('\n a = %.2f.\n b = %.3e .\n c = %.2e .',x(1),x(2),x(3));