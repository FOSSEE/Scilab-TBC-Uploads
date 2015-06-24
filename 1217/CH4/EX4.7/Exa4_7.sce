//Exa 4.7
clc;
clear;
close;
disp("The voltage at node X will be equal to the xvoltage across resistor R5, hence ");
disp("Vx=(Vo*R5)/(R5+R6)");
disp("Vx=Vo/8");
Vz=1;//in Volt
disp("writing KCL at node Y yields ");
disp("(Vy-Vx)/R2+(Vy-Vz)/R3=0 or (Vy-Vx)/2+(Vy-1)/4=0");
disp("Vy=(2*Vx+1)/3");
disp("writing KCL at node X yields ");
disp("(1-Vx)/R1+(Vy-Vx)/R2=0 or (1-Vx)/2+(Vy-Vx)/2=0 ");
disp("Vy-2*Vx+1=0");
disp("Now substituting for Vy from above equation, we get")
disp("(2*Vx-1)/3-2*Vx+1=0");
Vx=2/4;//in Volt
disp(Vx,"The value of Vx in volt is :")
Vo=8*Vx;//in Volt
disp(Vo,"The output voltage of the circuit in volt is : ")