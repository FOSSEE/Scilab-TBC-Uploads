clc;
//Ex3.21
Vr=1.5; //Volt
Zl=5; //Ohm
RL=120; //Ohm
Rs=51; //Ohm
R1=(Zl*RL)/(Zl+RL); //Ohm
Vrout=(R1/(R1+Rs))*Vr; //Volt
disp('mVpp',Vrout*1000,"Vrout="); //The answers vary due to round off error
