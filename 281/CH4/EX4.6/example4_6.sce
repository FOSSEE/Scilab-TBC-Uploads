disp('chapter 4 ex4.6')
disp('given')
disp('capacitor coupled inverting amplifier design')
disp("frequency range for the circuit =10Hz to 1KHz")
disp('Rl=250ohms')
disp("From inverting amplifier designed in ex 3.7 R1=1Kohms")
R1=1000
f1=10
disp("Xc1=R1/10 at F1")
disp("C1=1/(2*pi*f1*(R1/10))")
C1=1/(2*%pi*f1*(R1/10))
disp('farads',C1)
Rl=250
disp("Xc2=Rl at f1")
disp("C2=1/(2*pi*f1*Rl)")
C2=1/(2*%pi*f1*Rl)
disp('farads',C2)
disp("From inverting amplifier designed in ex 3.7 R2=47Kohms")
R2=47000
disp("Cf=1/(2*pi*f1*R2)")
Cf=1/(2*%pi*f1*R2)
disp('farads',Cf)
disp("The circuit voltage should be normally between 9 to 18 volts")