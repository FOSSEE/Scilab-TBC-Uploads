//caption:stability_using_Routh-hurwitz_criterion
//example 7.5.6
//page 206
s=%s;
syms T 
num=exp(-s*T);
den=s*(s+2);
G=num/den;
H=1;
a=(1+G*H);
CL=G/a;
CL=simple(CL);
CH=s^2+2*s+exp(-s*T);
//exp(-s*T)=1-sT+(sT)^2/2+....
CH=s^2+(2-T)*s+1;
disp('=0',CH,"characterstics_eq,CH=")
c0=coeffs(CH,'s',0);
c1=coeffs(CH,'s',1);
c2=coeffs(CH,'s',2);
b=[c0 c1 c2]
n=3;
routh=[b([3,1]);b([2]),0];
routh=[routh;simple(-det(routh)/routh(2,1)),0]
disp(routh,"routh=");
disp("for given system to be stable:");
disp("2-T>0");
disp("which gives:");
disp("T<2");
