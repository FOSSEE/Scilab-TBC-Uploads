disp('chapter 11 ex11.11')
disp('given')
disp('design a bandpass filter to have f1=10.3kHz f2=10.9kHz")
f1=10300
f2=10900
disp("select C1=C2=1000pF")
C1=1000*10^(-12)
C2=1000*10^(-12)
disp("fo=sqrt(f1*f2)")
fo=sqrt(f1*f2)
disp('Hz',fo)
disp("R5=R6=1/(2*%pi*C1*f1)")
R6=1/(2*%pi*C1*f1)
R5=R6
disp('ohms',R6)
disp("Use 15kohm std value")
R5=15000
disp("R1=R3=R4=R7=R8=R6=R5=15kOhm")
disp("Q=fo/(f2-f1)")
Q=fo/(f2-f1)
disp(Q)
R1=R5
disp("R2=R1*(2Q-1)")
R2=R1*(2*Q-1)
disp('ohms',R2)
disp("use 511kohm+/- 1%")