//Example No. 7_03
// Gauss Elimination using partial pivoting
// Pg No. 220
clear ; close ; clc ;

A = [   2  2  1   ;   4  2  3   ;   1  -1  1];
B = [  6   ;   4   ;  0  ];
[ ar , ac ] = size(A);
Aug = [   2  2  1  6   ;   4  2  3  4  ;  1  -1  1  0 ];

for i = 1 : ar-1
    [ p , m ] =  max(abs(Aug(i:ar,i)))
    Aug(i:ar,:) = Aug([i+m-1  i+1:i+m-2  i  i+m:ar],:);
    disp(Aug)
    for k = i+1 : ar
        Aug(k,i:ar+1) = Aug(k,i:ar+1) - (Aug(k,i)/Aug(i,i))*Aug(i,i:ar+1);
    end
    disp(Aug)
end

//Back Substitution
X(ar,1) = Aug(ar,ar+1)/Aug(ar,ar)
for i = ar-1 : -1 : 1
    X(i,1) = Aug(i,ar+1);
    for j = ar : -1 : i+1
        X(i,1) = X(i,1) - X(j,1)*Aug(i,j);
    end
    X(i,1) = X(i,1)/Aug(i,i);
end

printf('\n The solution can be obtained by back substitution \n x1 = %i \n x2 = %i \n x3 = %i \n',X(1,1),X(2,1),X(3,1))
