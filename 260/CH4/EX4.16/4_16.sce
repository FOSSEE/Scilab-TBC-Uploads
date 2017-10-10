//Eg-4.16    
//pg-182

clear
clc


//co-efficients of the polynomial
a=[6.3825 -21.52 21.26 -8 1];
//one root
l=3.7;
n=5;
for i=n-2:-1:1
    b(n-1)=a(n);
    b(i)=b(i+1)*l+a(i+1)
end

fdef=poly(b,'x','c');
disp(fdef)
printf('\nOr\n    The coefficient matrix is \n')
disp(b)