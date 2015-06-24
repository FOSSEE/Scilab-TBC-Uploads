disp('Euclidean Algorithm')
a=[540,168,36,24];
b=[168,36,24,12];
for i=1:4
V=int32([a(i),b(i)]);
thegcd=[];
thegcd(i)=gcd(V);
disp(thegcd(i))
end

function []=myf(dividend,divisor)
quotient=floor(dividend/divisor);
rem=modulo(dividend,divisor);
k=quotient*divisor+rem;
disp(k)
if(rem~=0) then
     myf(divisor,rem) 
end
endfunction

myf(540,168)

disp('for the equation 540*x+168*y=12,we are given')
a=540;
b=168;
c=24;
d=36;
d=a-3*b;     //Eqn (1)
c=b-4*d;      //Eqn (2)
k=d-1*c;    //Eqn (3)
5*d-1*b;      //Eqn (4)
k=d-b+4*d;     //substituting value of c in Eqn (3) from Eqn (2) 
r=5*a-16*b;    
if(r==k) then
    disp('x=5 and y=16');    
end