//0 denotes False and 1 denotes true
b=[0,1];
//binary operation  + on the set of bits
for i=1:2
for j=1:2
k = b(i)& b(j);
disp(k)
end
end
//binary operation  * on the set of bits
for i=1:2
for j=1:2
k = b(i)| b(j);
disp(k)
end
end
//unary operation ' on the set of bits
k=~b
clear;
D=[1,2,5,7,10,14,35,70];
a=35;
b=70;
V=int32([a,b]);
thelcm=lcm(V)  //a+b=lcm(a,b)
V=int32([a,b])  
thegcd=gcd(V)  //a*b=gcd(a,b)
abar=70/a      //a'=70/a