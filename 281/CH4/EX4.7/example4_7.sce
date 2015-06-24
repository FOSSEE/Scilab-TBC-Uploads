disp('chapter 4 ex4.7')
disp('given')
disp('capacitor coupled non inverting amplifier design')
disp("voltage gain=100")
disp("Supply voltage=24v ")
Av=100
Vcc=24
disp("Output amplitude=5V")
Vo=5
disp("lower cut off frequency for the circuit =75Hz")
disp('Rl=5.6kohms')
disp("Ibmax=500nA")
Vbe=0.7 
Ibmax=500*10^(-9)
disp("I2>>Ibmax")
I2=100*Ibmax
disp(I2,"I2=")
R1=(Vcc/2)/I2
disp("R1= ")
disp('ohms',R1)
R2=(Vcc/2)/I2
disp(R2,"R2=")
disp("assume R1=220Kohms")
disp("Vi=Vo/Av")
Vi=Vo/Av
disp(Vi,"Vi=")
R1=220000
disp("I4>>Ibmax")
I4=100*Ibmax
disp(I4,"I4=")
R4=Vi/I4
disp(R4,"R4=")
disp("R3+R4=Vo/I4")
R3=(Vo/I4)-R4
disp(R3,"R3=")
Rp=(R1*R2)/(R1+R2)
disp(Rp,"Rp(R1||R2)=")
f1=75
disp("Xc1=Rp/10 at F1")
disp("C1=1/(2*pi*f1*(Rp/10))")
C1=1/(2*%pi*f1*(Rp/10))
disp('farads',C1)
Rl=5600
disp("Xc2=Rl/10 at F1")
disp("C2=1/(2*pi*f1*(Rl/10))")
C2=1/(2*%pi*f1*(Rl/10))
disp('farads',C2)
disp("C1=1/(2*pi*f1*R4)")
C3=1/(2*%pi*f1*R4)
disp('farads',C3)
disp("The circuit voltage should be normally between 9 to 18 volts")
