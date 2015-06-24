//Caption:calculate_tr,Tp,Mp
//example 11_10_a
//page 478
s=%s;
G=16/(s^2+1.6*s)
H=1;
CL=G/.H
disp(CL,"C(s)/R(s)=");
b=denom(CL)
c=coeff(b)
//Wn^2=c(1,1)
Wn=sqrt(c(1,1))//natural frequency
//2*zeta*Wn=c(1,2)
zeta=c(1,2)/(2*Wn)//damping ratio
Wd=Wn*sqrt(1-zeta^2)//damped frequency
Mp=(exp(-(zeta*%pi)/sqrt(1-zeta^2)))*100//max. overshoot
tr=(%pi-atan(sqrt(1-zeta^2)/zeta))/(Wn*sqrt(1-zeta^2))//rise time
Tp=%pi/Wd//peak time
disp(Tp,"peak time=");
disp(Mp,"max. peak overshoot=")
disp(tr,"rise time=")