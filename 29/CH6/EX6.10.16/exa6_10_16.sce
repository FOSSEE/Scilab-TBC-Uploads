//caption:determine_Wn,zeta_and_Mp
//example 6.10.16
//page 187
s=%s;
num=1;
den=sym('s*(1+0.5*s)*(1+0.2*s)');
c=num/den;
c=simple(c);
disp(c,"C(s)/E(s)=");
G=c;
H=1;
CL=G/(1+G*H);
CL=simple(CL);
disp(CL,"C(s)/R(s)=");
A=pfss((10/(s^3+7*s^2+10*s+10)));
d=denom(A(1));
b=coeff(denom(A(1)))
printf("for oscillatory roots:")
Wn=sqrt(b(1,1));//natural_frequency
//2*zeta*Wn=1.5;
zeta=1.5/(2*Wn);//damping ratio
Mp=exp((-zeta*%pi)/sqrt(1-zeta^2))*100;//%_peak_overshoot
disp(Wn,"natural_frequency=");
disp(zeta,"damping ratio=");
disp(Mp,"%_peak_overshoot=");