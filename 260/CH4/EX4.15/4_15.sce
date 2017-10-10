//Eg-4.15
//pg-180

clear
clc


//co-efficients of the polynomial
a=[-6 11 -6 1];
//one root
l=1;
n=4;
for i=n-2:-1:1
    b(n-1)=a(n);
    b(i)=b(i+1)*l+a(i+1)
end

fdef=poly(b,'x','c');
disp(fdef)