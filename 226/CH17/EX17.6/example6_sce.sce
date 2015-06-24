//chapter 17
//example 17.6
//page 729
printf("\n")
printf("given")
f=30*10^3;C1=1000*10^-12;
disp(" third order low pass filter")
disp("-20 dB per decade stage")
fc1=f/.65;
R1=1/(2*3.14*fc1*C1)
R2=R1;
disp("-40dB per decade stage")
C3=1000*10^-12;
C2=2*C3
fc2=f/.8
R4=1/(2*3.14*fc2*C3*(sqrt(2)))
R3=R4;
R5=R3+R4