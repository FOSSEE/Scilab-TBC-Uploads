//Eg-5.4
//pg-219

clear
clc

exec graf.sci
clc
A=[1 2 4;3 1 2;4 2 5];

a1=zeros(3,1);
a1(1)=trace(A);
A1=A;

for k=2:3
   A2=A*(A1-a1(k-1)*eye(3,3));
   a1(k)=trace(A2)/k;
   A1=A2;    
end

C=[1; -a1];

for(i = 1:4)
    c(i) = C(5-i);
end

ce = poly(c,'x','c');

printf('\nThe expression of the characteristic equation is \n')

disp(ce)
printf('\n')
for(i = 1:4)
    G(1,i) = c(5-i);
end

q = graf(G,0.001);