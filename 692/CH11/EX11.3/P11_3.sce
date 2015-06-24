//example 11.3
//Reconstruction of Transfer function from Impulse response coeff.
clear;
clc;
z=%z;
numz=2+6/z+3/(z^2);
denz=(1+1/z+2/z^2);
disp(numz/denz,'Hz = ');
d=coeff(numer(denz));
disp(d,'coefficients of the denominator are = ')
h1=ldiv(numer(numz),numer(denz),5);
disp(h1','The first five coeffcients are of H(z) = ');
for i=1:3
    for j=1:3
        if i>=j
            h(i,j)=h1(i-j+1)
        else
            h(i,j)=0;
        end
    end
end
disp(h,'h = ');
disp((h'*d')','coefficients of the numerator are = ');
