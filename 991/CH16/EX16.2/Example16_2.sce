//Example 16.2.
clc
format(6)
disp("Given      ton = 70 ns")
C=(70*10^-9)/(0.1*600)  // in faraday
x1=C*10^12  // in pF
disp(x1,"         C(pF) = ton / 0.1*Rs =")  // approximately 1200 pF
format(4)
tre=2.3*(5.6*10^3)*(1200*10^-12) // in seconds
x2=tre*10^6  //in us
disp(x2,"      tre(useconds) = 2.3*RB*C =")
format(6)
f=1/(2*(15*10^-6))  //in Hz
x3=f*10^-3  //in kHz
disp(x3,"      f(kHz) = 1/2T = 1/2tre =")