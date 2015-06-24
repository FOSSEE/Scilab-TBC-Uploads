disp('chapter 4 ex4.4')
disp('given')
disp('capacitor coupled non inverting amplifier design')
disp("lower cut off frequency for the circuit =120Hz")
disp('Rl=2.2kohms')
disp("R1max=0.1Vbe/Ibmax")
disp("Vbe=0.7volts")
disp("Ibmax=500nA")
Vbe=0.7 
Ibmax=500*10^(-9)
R1max=0.1* Vbe/ Ibmax
disp("R1max= ",R1max)
R1=120000
f1=120
disp("R1=18 kohms and R3=270 ohms from example 3.4")
disp("Xc1=R1/10 at F1")
disp("C1=1/(2*pi*f1*(R1/10))")
C1=1/(2*%pi*f1*(R1/10))
disp('farads',C1)
Rl=2200
disp("Xc2=Rl at f1")
disp("C2=1/(2*pi*f1*Rl)")
C2=1/(2*%pi*f1*Rl)
disp('farads',C2)
disp("The circuit voltage should be normally between 9 to 18 volts")