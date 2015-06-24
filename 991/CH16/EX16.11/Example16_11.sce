//Example 16.11.
clc
format(7)
disp("The period of oscillation for an asymmetrical astable multivibrator is,")
t=0.693*(((2*10^3)*0.01*10^-6)+((10*10^3)*(0.05*10^-6))) // seconds
x1=t*10^6 // in us
disp(x1,"    T(us) = 0.693(R1C1+R2C2) =")
f=1/(360.36*10^-6)  // in Hz
x2=f*10^-3 // in kHz
disp(x2,"Therefore, the frequency of oscillation, f(kHz) = 1/T =")