//Engineering and Chemical Thermodynamics
//Example 9.9
//Page no :454

clear ; clc;
//Given 
K_T = 1.51 * 10^-5 ;
P = 300  ; //[bar]
T = 500 + 273.2 ; //[K]
R = 8.314 ;

function y = f991(k),
    y = ((2 * k)^2 * (4 - 2 * k)^2 / ((1 - k) * (3 - 3*k)^3)) * P^-2 - K_T 
endfunction

z1 = fsolve([0.3],f991) ;

disp(" Example: 9.9   Page no : 454") ;
printf("\n   (a)\n        Extent of reaction = %.2f \n",z1);

//(b)
P_c = [111.3 * 101325 , 33.5 * 101325 , 12.8 * 101325] ;
T_c = [405.5 , 126.2 , 33.3] ;

for i = 1:3
    a(1,i) = 27 / 64 * (R * T_c(1,i))^2 / P_c(1,i) ;
    b(1,i) = (R * T_c(1,i)) / (8 * P_c(1,i)) ;
   
    function y = f992(v) , 
        y = (R * T) / (v - b(1,i)) - a(1,i) / (v^2) - P * 100000 ;
    endfunction
    
    V(1,i) = fsolve([0.0002],f992) ;
    
    sai(1,i) = exp( - log((V(1,i) - b(1,i)) * P * 10^5/ ( R * T)) + b(1,i) / (V(1,i) - b(1,i)) - 2 * a(1,i) / (R * T * V(1,i))) ;
    
end

function y = f993(k),
    y = ((2 * k)^2 * sai(1,1)^2 * (4 - 2 * k)^2 * 3 / ((1 - k) * sai(1,2)* (3 - 3*k)^3 * sai(1,3)^3 ))* P^-2  - K_T 
endfunction

z2 = fsolve([0.3],f993) ;

x = (z1 - z2) / z1 * 100 ;

printf("   (b)\n        Extent of reaction = %.2f \n",z2);
printf("\n  A correction of about   %d%% is observed from accounting for nonideal behaviour . ",x)
