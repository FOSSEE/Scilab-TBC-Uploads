disp('chapter 4 ex4.5')
disp('given')
disp('capacitor coupled non inverting high impedence follower design')
disp("lower cut off frequency for the circuit =200Hz")
disp('Rl=12kohms')
disp("input voltage=15mV")
disp("output voltage=3V")
disp("Av=Vo/Vi")
Vo=3
Vi=0.015
Av=Vo/Vi
disp(Av)
disp("for non inverting amplifier Av=(R2+R3)/R3")
disp("for BIFET opamp R2=1Mohms")
R2=1000000
R3=R2/(Av-1)
disp(R3,"R3=")
f1=200
R1=R2-R3
disp(R1,"R1=")
disp("C2=1/(2*pi*f1*(R3))")
C2=1/(2*%pi*f1*(R3))
disp('farads',C2)
disp("C1=1000pF much larger than stray capacitance")
Rl=12000
disp("Xc3=Rl/10 at f1")
disp("C2=1/(2*pi*f1*(Rl/10)")
C2=1/(2*%pi*f1*(Rl/10))
disp('farads',C2)
disp("The circuit voltage should be normally between 9 to 18 volts")