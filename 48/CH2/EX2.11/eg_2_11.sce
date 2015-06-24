clear;
clc;
//N=input("enter the number for which divisibilty ");
N=45;        //divident
h=1;
for i=1:N        //finding all the divisors of 45
    if(modulo(N,i)==0)
        r(h)=i;
        h=h+1;
     end
end
n=max(size(r));
disp("Hasse Diagram")       //displaying in the form of hasse diagram
disp("------------")
disp(r(n));
h=2;
for i=n-1:-2:3
    disp("-----------");
    disp(r(i),r(i-1));
    h=h+1;
end
disp("----------")
disp(r(1));
