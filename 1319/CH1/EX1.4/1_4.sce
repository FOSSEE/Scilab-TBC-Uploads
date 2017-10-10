// To find the frequency in the RLC Circuit at a phase angle of 45 degrees

clc;
clear;

R=100;
L=2;
C=20*(10^-6);

f1=poly([0 1],'f1','c');
f2=poly([0 1],'f2','c');
w1=2*%pi*f1;
w2=2*%pi*f2;

//To achieve a phase angle of 45 degrees, the difference between Xl and Xc should be equal to R

// We have two different situations

Xl1=L*w1;
Xc1=1/(w1*C);

Xl2=L*w2;
Xc2=1/(w2*C);

cs1=Xl1-Xc1-R;
cs2=Xc2-Xl2-R;

f1=roots(cs1(2));
f2=roots(cs2(2));

//To find the suitable roots and to differenciate between positive and negative roots.

a=sqrt(f1(1));
b=sqrt(f1(2));
c=sqrt(f2(1));
d=sqrt(f2(2));

if(imag(a))
    f1=f1(2);
end

if(imag(b))
    f1=f1(1);
end

if(imag(c))
    f2=f2(2);
end

if(imag(d))
    f2=f2(1);
end

disp('The frequencies at which the phase angle is 45 degress are')

disp('Hz',f2,'f2 =','Hz',f1,'f1 =')
