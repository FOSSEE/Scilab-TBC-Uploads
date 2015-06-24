//Caption:calculate_Td,tr,Tp,Mp
//example 11_10_b
//page 478
s=%s;
syms Td
G=16/(s^2+1.6*s)
G1=1+s*Td
H=1;
a=G*G1
CL=a/.H
CL=simple(CL)
disp(CL,"C(s)/R(s)=");
zeta=0.8//given
//since zeta=0.8 so 2*zeta*Wn=1.6+16*Td
Wn=sqrt(16)
//so on solving 
Td=0.3
//so transfer function takes the form:
CL1=(16+4.8*s)/(s^2+6.4*s+6)
disp(CL1,"C(s)/R(s)=");
Wn1=sqrt(16)
//2*zeta1*Wn1=6.4
zeta1=6.4/(2*Wn1)//damping ratio
Wd=Wn1*sqrt(1-zeta1^2)//damped frequency
Mp=(exp(-(zeta1*%pi)/sqrt(1-zeta1^2)))*100//max. overshoot
tr=(%pi-atan(sqrt(1-zeta1^2)/zeta1))/(Wn1*sqrt(1-zeta1^2))//rise time
Tp=%pi/Wd//peak time
disp(Tp,"peak time=");
disp(Mp,"max. peak overshoot=")
disp(tr,"rise time=")
