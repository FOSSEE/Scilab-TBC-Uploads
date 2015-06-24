//caption:determine_frequency_of_oscillations
//example 12.21
//page 533
s=%s;
syms  K
G=sym('K*(s*(2*s+1))/(s^3+3*s+20)');
H=1;
CH=((s^3+3*s+20)+K*(s*(2*s+1)))
disp('=0',CH,"characterstics_eq,CH=")
c0=coeffs(CH,'s',0);
c1=coeffs(CH,'s',1);
c2=coeffs(CH,'s',2);
c3=coeffs(CH,'s',3);
b=[c0 c1 c2 c3]
routh=[b([4,2]);b([3,1])]
routh=[routh;-det(routh(1:2,1:2)/routh(2,1)),0]
routh(3,1)=simple(routh(3,1))
t=routh(2:3,1:2)
l=simple(-det(t)/t(2,1))
routh=[routh;l,0]
disp(routh,"routh=")
disp("for sustained oscillations:");
disp("2*K^2+6*K-20=0")
disp("which gives K")
disp("K=2");
disp("freq of oscillations is calculated by solving equation formed by s^2 row of the routh table")
K=2
k=2
A=2*k*s^2+20
r=roots(A)
disp(%i*r(2),"frequency of oscillations=" )

