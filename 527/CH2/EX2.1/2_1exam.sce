//Engineering and Chemical Thermodynamics
//Example 2.1
//Page no :33

clear ; clc
z1 = 10 ; //[m]
z2 = 0 ; //[m],Taking ground as state 2,reference
v1 = 0 ;

//From conservation of total energy we get
// (1/2*m*v2^2-1 / 2*m*v1^2)+(m*g*z2 - m*g*z1) = 0
//   1/2*m*v2^2 - m*g*z1 = 0
v2 = sqrt(2 * 9.8 * z1) ; //[m/s]
disp(" Example: 2.1   Page no : 33") ;
printf('\n      Final velocity = %g (m/s) ',v2);