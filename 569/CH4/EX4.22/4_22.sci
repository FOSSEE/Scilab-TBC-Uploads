// Calculate the frequency range
clc;
eta=0.6;
fn=1000;
M=1.1;
disp('M=1/[[(1-u^2)^2]+(2*u*eta)^2]^0.5; ..........(i)')
disp('on solving u^4-0.5u^2+0.173=0')
disp('the above equation gives imaginary values for frequency so for eta=0.6 the output is not 1.1')
disp('Now let M=0.9, on solving equation (i) we have')
disp('u^4-0.56u^2-0.234=0')
disp('on solving u=0.916')
u=0.916;
f=u*fn;
disp(f,'maximum value of range (Hz)=')
disp('So, the range of the frequency is from 0 to 916 Hz')

