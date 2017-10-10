// Exa 2.4

clc;
clear;

// Given data

// Referring circuit given in  Fig. 2.7(a)
R1= 5*10^3;  // Ω
Rf=20*10^3; // Ω
Vi=1; // Input voltage(V)
RL=5*10^3; // Load resistor(Ω)


// Solution

Vo= (1+(Rf/R1))*Vi;  // Output voltage(V)
printf('The output voltage i.e vo = %d  V. \n',Vo);
AcL=Vo/Vi;  // Closed loop Gain
printf(' The  closed loop gain i.e Acl = %d.   \n',AcL);
IL=Vo/RL; // Output current(A)
printf(' The  load current i.e iL = %d mA. \n',IL*1000);
I1=Vi/R1; // Input current(A)
Io=IL+I1; // Total current(A)
printf(' The  output current i.e io = %.2f  mA. \n',Io*1000);
disp("The op-amp output current Io flows outwards from the output junction.");
