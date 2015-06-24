//Example 5_39
clc;
clear;
close;
format('v',6);
//given data : 
//For IL=0;//A
V0=60;//V
V=200;//V(Supply Voltage)
ID=5:40;//mA
R=(V-V0)/max(ID);//kohm(R is >= this value)
//For IL=ILmax;//A
IT=max(ID);//mA
ID=min(ID)///mA(ID<=this value)
Imax=IT-ID;///mA
disp(Imax,"(a) Imax(mA) : ");
//Part (b)
IL=25;//mA
ID=5:40;//mA
//Taking minimum current for good regulation
IT=min(ID)+IL;///mA
Vmax1=IT*R+V0;//V
//Taking maximum current for good regulation
IT=max(ID)+IL;///mA
Vmax2=IT*R+V0;//V
disp("(b) Without loss of regulation, V may vary from "+string(Vmax1)+" V to "+string(Vmax2)+" V.");

