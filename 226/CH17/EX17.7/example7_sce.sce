//chapter 17
//example 17.7
//page 730
printf("\n")
printf("given")
f=20*10^3;
disp("3rd order high pass filter")
disp("-20dB per decade stage")
R1=121*10^3;
fc1=.65*f
C1=1/(2*3.14*fc1*R1)
//this is so small it might be effected by stray capacitor.redesign ,first choosing a suitable capacitance C1
C1=100*10^-12;
R1=1/(2*3.14*f*C1)
R2=R1;
disp("-40dB per decade stage")
C3=1000*10^-12;
R4=(sqrt(2))/(2*3.14*.8*f*C3)
C2=C3;
R3=.5*R4
R5=R4