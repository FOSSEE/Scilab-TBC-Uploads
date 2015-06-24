//Exa 9.3
clc;
clear;
close;
//given data
RL1=100;//in ohms
RL2=8;//in ohms
RL3=1;//in ohms
VEBon=0.7;//in volts
Beta=25;
R=5;//in ohms
//device used 7808 so V=8 volts
V=8;
// part(i) for a laod of 100 ohms
IL1=V/RL1;//in amperes
VacR1=IL1*R;
disp(VacR1,"VacR(in volts) : ")
disp("  Which is less than the given VEBon.Hence Transistor remains OFF.")
//so Io=IL and Ic=0
Io1=IL1;//in amperes;
Ic1=0;
disp(Ic1,Io1,"Ic and Io for the 100 ohms load(in amperes): ")
// part(ii) for a laod of 8 ohms
IL2=V/RL2;//in amperes
VacR2=IL2*R;
disp(VacR2,"The voltage across R will be(in volts) : ")
disp("  Which is greater than the given VEBon.Hence Transistor will be ON.")
//expression for Io
Io2=((IL2+(Beta*VEBon)/R))/(Beta+1);//in amperes;
Ic2=IL2-Io2;
disp(Ic2,Io2,"Ic and Io for the 8 ohms load(in amperes): ")

// part(iii) for a laod of 1 ohms
IL3=V/RL3;//in amperes
VacR3=IL3*R;
disp(VacR3,"VacR(in volts) : ")
disp("  Which is greater than the given VEBon.Hence Transistor will be ON.")
//expression for Io
Io3=((IL3+(Beta*VEBon)/R))/(Beta+1);//in amperes;
Ic3=IL3-Io3;
disp(Ic3,Io3,"Ic and Io for the 1 ohms load(in amperes): ")


