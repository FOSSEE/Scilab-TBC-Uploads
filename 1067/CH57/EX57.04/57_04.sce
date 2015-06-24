clear;
clc;
v1=1;
z=.05+.02*%i;
s=1-.6*%i;
c=.000005;
v(2,1)=1;
mprintf("used value in iteration\titeration number\tresulting value of V2")
for i=2:100
    v(2,i)=v1-(z*conj(s))/conj(v(2,i-1));
    j=v(2,i)-v(2,(i-1));
    mprintf("\n%f+j(%f)V\t\t\t(%d)\t\t%f+j(%f)V",real(v(2,i-1)),imag(v(2,i-1)),i-1,real(v(2,i)),imag(v(2,i)));
    if(abs(j)<c)
        break;
    end;
end;
