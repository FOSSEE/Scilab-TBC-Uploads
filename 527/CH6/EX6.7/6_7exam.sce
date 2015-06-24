//Engineering and Chemical Thermodynamics
//Example 6.7
//Page no :279

clear ; clc ;
//Given 
A = [-32669,-31840,-28727,-26978,-24301,-20083,-13113] ;
B = [20 ,10 ,5 ,4 ,3 ,2 ,1] ;

disp(" Example: 6.7   Page no : 279") ;
for i = 1:7
    del_h_mix = A(1,i) / (1 + B(1,i)) ;
    C(1,i) = del_h_mix ;
    D(1,i) = 1 / (1 + B(1,i)) ;
    printf("\n      For mole fraction %.3f   the entropy of mixing is %d J/mol\n",D(1,i),C(1,i)) ;
end