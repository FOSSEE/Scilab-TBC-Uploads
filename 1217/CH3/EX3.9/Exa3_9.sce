//Exa 3.9
clc;
clear;
close;
// given data
Vo=1.5;//in Volts
Vin=10;//in mVolts
RiF=500;//in kohm
R1=500;//in kohm
AF=Vo/(Vin*10^-3);//unitless
RF=AF*R1;//in Kohm
disp(RF/1000,"The value of RF in Mohm is :");
disp("This value becomes too large for most of the practical circuit. Thus we make use of op-amp with T-Network.");
disp("We have AF=-R2/R1*(1+R3/R2+R3/R4)");
disp("Choose arbitraly R2/R1=R3/R1=5, then solving this equation.")
//Microphone resistance is Rm=1.2 Kohm
R1eff=100;//in Kohm
Rm=1.2;//in Kohm
R1=R1eff-Rm
R3=5*R1;
R2=R3;//in Kohm
R4=R3/28;//in Kohm
disp(R1,"Value of R1 in Kohm is : ")
disp(R2,"Value of R2 in Kohm is : ")
disp(R3,"Value of R3 in Kohm is : ")
disp(R4,"Value of R4 in Kohm is : ")