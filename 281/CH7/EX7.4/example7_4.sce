disp('chapter 7 ex7.4')
disp('given')
disp('Design an adjustable peak clipping circuit')
disp('Vomax=+or-5volt and Vomin=+or-3volt')
Vomax=5
Vomin=3
disp('Vf=0.7volt')
Vf=0.7
disp('Vomax=Vz+Vf')
Vz=Vomax-Vf
disp('volts',Vz)    //use a 1N 749 Zener diode
disp('I1>Izmin=500*10^(-6)A')
disp('let I1min=2*10^(-3)A')
I1min=2*10^(-3)
disp('R2=Vomin/I1min')
R2=Vomin/I1min
disp('ohms',R2)  //standard value
disp('VR4=Vomax-Vomin')
VR4=Vomax-Vomin
disp('volts',VR4)
disp('R4=VR4/I1min')
R4=VR4/I1min
disp('ohms',R4)   //standard potentiometer value
disp('for Av=1,R1+R4=R2')
Av=1
R1=R2-R4
disp('ohms',R1)
disp('use 470ohm standard value')
R1=470
disp('R3=(R1+R4)||R2')
R3=((R1+R4)*R2)/(R1+R4+R2)
disp('ohms',R3)  //use 680ohm standard value