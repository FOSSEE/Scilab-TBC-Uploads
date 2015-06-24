clc;

sigmayp=350 //MPa
sigma3=0
M=8 //kN
Mt=24 //kNm
N=2
v=0.3

// sigma= My/I ==32M/%pid^3
// tau= Mt*r/J ==16Mt/%pid^3
//sigma1=(16*(M+sqrt(M^2+Mt^2)))/(%pi*d^3)
//sigma2=(16*(M-sqrt(M^2+Mt^2)))/(%pi*d^3)

//solution a: max principal stress theory
//(16*(M+sqrt(M^2+Mt^2)))/(%pi*d^3)=sigmayp/N

a=(16*(M+sqrt(M^2+Mt^2)))/%pi
disp(a)
b=sigmayp*10^6/N
disp(b)
d=(a/b)^(1/3)
disp(d,"diameter of the bar in meter is= ")

//solution b:max shearing stress theory

c=(32*sqrt(M^2+Mt^2))/%pi
disp(c)
d=(c/b)^(1/3)
disp(d,"diameter of the bar in meter is= ")

//solution c:max principal strain theory
//epsilon1=(sigma1-v(sigma2+sigma3))/E=epsilonyp/N=sigmayp/EN    Or
//sigma1-v(sigma2+sigma3)=b    given
//sigma1=b+v(sigma2+sigma3)    substituting the values of the sigma 1,2 and 3 we get
//(16*(M+sqrt(M^2+Mt^2)-vM-v*sqrt(M^2+Mt^2)))/(%pi*d^3)=b
e=(16*(M+sqrt(M^2+Mt^2)-v*M-v*sqrt(M^2+Mt^2)))/%pi
disp(e)
d=(e/b)^(1/3)
disp(d,"diameter of the bar in meter is= ")

//solution d:max energy of distortion theory

f=(16*sqrt(4*M^2+3*Mt^2))/%pi
disp(f)
d=(f/b)^(1/3)
disp(d,"diameter of the bar in meter is= ")
