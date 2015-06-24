disp('To determine if u is the least square solution to Ax=b')
disp('Given')
a=[3 4;-2 1;3 4]
disp(a,'A=')
b=[11;-9;5]
disp(b,'b=')
u=[5;-1]
v=[5;-2]
disp(v,'v=',u,'u=')
disp('Au=')
disp(a*u)
c=b-a*u
disp(c,'b-Au=')
disp('||b-Au||=')
disp(sqrt(c(1,1)^2+c(2,1)^2+c(3,1)^2))
disp('Av=')
disp(a*v)
d=b-a*v
disp(d,'b-Av=')
disp('||b-Av||=')
disp(sqrt(d(1,1)^2+d(2,1)^2+d(3,1)^2))
disp('Since Av is more closer to A than Au, u is not the least square solution.')