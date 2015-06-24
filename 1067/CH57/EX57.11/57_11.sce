clear;
clc;
v=1.1;
s(2)=-(.5-.3*%i);
y(2,1)=1.9*%e^(%i*(100)*%pi/180);
y(2,2)=1.6*%e^(%i*(-80)*%pi/180);
v2(1)=1*%e^(%i*(-10)*%pi/180);
for i=2:1000
    j=1/(y(2,2));
    z(i)=(s(2)/conj(v2(i-1)));
    f(i)=(y(2,1)*v);
    v2(i)=j*(z(i)-f(i));
    c=atand(imag(v2(i))/real(v2(i)));
    if(abs(v2(i)-v2(i-1))<.01)
        break;
    end
     mprintf("\nfor %dth iteration Voltage = %f/_%fV\t\t%f+j%fV",i,abs(v2(i)),c+3,real(v2(i)),imag(v2(i)));
end
