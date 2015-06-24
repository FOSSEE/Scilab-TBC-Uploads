
//To Determine the starting torque and starting current for various starters
//Page 206
clc;
clear;
V=400;//Rated Voltage //Phase Voltage //Delta Connected
Pr=50*735.5; //Rated Power
N=750; //Rated Speed
s=4.5/100; //Full load Slip
Il=50; //Full Load Current
Z=2.5; //Impedance per phase
w=2*%pi*N/60; //Angular Frequency
Tl=Pr/w; //Full Load Torque
Ist=V/Z; //Starting Current
Isl=sqrt(3)*Ist; //Line Current


//DOL Starter
Tstd=((Isl/Il)^2)*s*Tl; //Starting Torque

//Star - Delta Starter
Tsts=Tl*((1/sqrt(3))^2); //Starting Torque

//Autotransformer
tap=70/100; //Tapping 
Tsta=(tap^2)*Tl; //Starting Torque

printf('The Starting Current for all the three starter are the same that is %g A\n',Isl)
printf('The Starting torque for:\n')
printf('i) D.O.L Starter : %g Nm\n',Tstd)
printf('ii) Star -Delta Starter : %g Nm\n',Tsts)
printf('ii) Auto Transformer with 70 percent tapping : %g Nm\n',Tsta)
