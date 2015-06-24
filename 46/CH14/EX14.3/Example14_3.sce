//Example 14.3
clc
syms Kc s s3;
G1=1/((s+1)*(0.5*s+1));
H=3/(s+3);
G=Kc*G1*H;
G=simple(G);
//The characteristic equation is therefore
disp('1+G=0')
disp('=0',1+G,'1+G=');
//which is equivalent to
disp("s^3+6*s^2+11*s+6+6*Kc=0")
routh=[1 11;6 6+6*Kc]
routh=[routh;-det(routh(1:2,1:2))/routh(2,1),0]
routh=[routh;-det(routh(2:3,1:2))/routh(3,1),0]
routh=simple(routh)
disp('>0',routh(3,1))
disp('Kc<10')
Kc=10;
routh=horner(routh,Kc);
routh=dbl(routh)
C=routh(2,1);
D=routh(2,2);
p=poly([D 0 C],'s','coeff')
disp('6*s^2+66=0')
r=roots(p)
disp('=0',simple((s-r(1,1))*(s-r(2,1))*(s-s3)))
//On comparing with the equation
poly([6+6*Kc 11 6 1],'s','coeff')
//we get
s3=-6;
printf("s1=3.3166248*i,s2=3.3166248*i,,s3=6\n")