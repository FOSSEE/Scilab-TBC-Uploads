disp('chapter 4 ex4.3')
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
disp("R1max= ")
disp('ohms',R1max)
disp("R1+R2=Rmax")
R1=R1max/2
R2=R1
disp("assume R1=68Kohms")
R1=68000
f1=50
disp("Xc1=R1/10 at F1")
disp("C1=1/(2*pi*f1*(R1/10))")
C1=1/(2*%pi*f1*(R1/10))
C2=C1
disp('farads',C1)
Rl=3900
disp('farads',C2)
M=50000
disp("M=50000")
disp("Zin=(1+M)*R1")
Zin=(1+M)*R1
disp('ohms',Zin)
disp("The circuit voltage should be normally between 9 to 18 volts")
