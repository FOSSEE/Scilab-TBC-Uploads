// to calculate the maximum and minimmum output frequencies of oscillator in fig 11-1
// example 11-1 in page 317
clc;
// Data Given
R=[5e+3 500];// resistance R2 and R1 all in ohm
C1=300D-9; C2=C1;// Capacitance=300 nF
// calculation
f=['f(min)' 'f(max)'];
for n=1:2
    printf("%s=%d Hz\n",f(n),1/(2*%pi*C1*R(n)));// frequency in hertz
end
//result
//f(min)=106 Hz
//f(max)=1061 Hz