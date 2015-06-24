disp('chapter 4 ex4.1')
disp('given')
disp('capacitor coupled voltage follower design')
disp("lower cut off frequency for the circuit =50Hz")
disp('Rl=3.9kohms')
disp("R1max=0.1Vbe/Ibmax")
disp("Vbe=0.7volts")
disp("Ibmax=500nA")
Vbe=0.7 
Ibmax=500*10^(-9)
R1max=0.1* Vbe/ Ibmax
disp("R1max= ",R1max)
disp("assume R1=120Kohms")
R1=120000
f1=50
disp("Xc1=R1/10 at F1")
disp("C1=1/(2*pi*f1*(R1/10))")
C1=1/(2*%pi*f1*(R1/10))
disp('farad',C1)
Rl=3900
disp("Xc2=Rl at f1")
disp("C2=1/(2*pi*f1*Rl)")
C2=1/(2*%pi*f1*Rl)
disp('farad',C2)
disp("The circuit voltage should be normally between 9 to 18 volts")
