disp('solving for the congruence equation 8x @ 12(mod 28) ,where @ is the sign for congruence')
a=8;
b=12;
m=28;
V= int32([a,m]);
d= gcd(V);
a1= a/d;
b1= b/d;
m1= m/d;
 
function yd= f(x)
yd= (a1*x)-b1
endfunction
 
 disp('k is the unique solution of the equation ')
for i=0 : m1
x=i;
p=f(x);
if(modulo(p,m1) == 0)
k=x
break;
end
end

s1=k;
s2=k+m1;
s3=k+(m1*2);
s4=k+(m1*3);
 disp('solutions of the original equation at d=4')
disp(s1)
disp(s2)
disp(s3)
disp(s4)
