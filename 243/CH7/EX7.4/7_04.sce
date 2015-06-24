//Example No. 7_04
//Gauss Jordan Elimination
//Pg No. 228
clear ; close ; clc ;

A = [  2  4  -6 ; 1  3  1 ; 2  -4  -2  ];
B = [  -8  ;  10  ;  -12  ];
[ar,ac] = size(A);
Aug = [  2  4  -6  -8  ;  1  3  1  10  ;  2  -4  -2  -12  ];
disp(Aug)

for i = 1 : ar
    Aug(i,i:ar+1) = Aug(i,i:ar+1)/Aug(i,i) ;
    disp(Aug)
    for k = 1 : ar
        if k ~= i then
            Aug(k,i:ar+1) = Aug(k,i:ar+1) - Aug(k,i)*Aug(i,i:ar+1);
        end      
    end
    disp(Aug) 
end
