//Example No. 11_06
//Three Point Central Difference formula
//Pg No. 359
clear ;close ;clc ;

T = 5:9 ;
s = [10  14.5  19.5  25.5  32 ];
h = T(2)-T(1);
deff('A = a(t)','A = [ s( find( T == (t+h) ) ) - 2*s( find( T == t) ) + s( find( T == (t-h) ) ) ]/h^2')
a_7 = a(7)

disp(a_7,'a(7) = ')