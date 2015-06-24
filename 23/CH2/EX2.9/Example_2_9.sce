clear;
clc;

//Example 2.9
//Caption : Program To Find Work,Heat,del U and del H

//Given values
//Initial
P1=1;//Pressure=1bar
T1=298.15;//Temp=298.15K(25`C)
V1=0.02479;//Molar Volume=0.02479m^3/mol
//Final
P2=5;//Pressure=5bar
Cv=20.78;//J/mol/K
Cp=29.10;//J/mol/K

//to Find del_U,del_H by two processes
V2=V1*(P1/P2);//m^3(1 mol)
disp('m^3',V2,'Final Volume')

//Solution

//(a)-Cooling at const pressure followed by heating at const Volume
T2=T1*(V2/V1);//K
disp('K',T2,'Final Temperature')
del_H=round(Cp*(T2-T1));//J
Q1=del_H;//J
del_U1=round(del_H-(P1*(10^5)*(V2-V1)));//J
//Second Step
del_U2=round(Cv*(T1-T2));//J
Q2=del_U2;
Q=Q1+Q2;
del_U=0;
W=del_U-Q;//J
del_H=0;//const Temperature

disp('(a) Cooling at const Pressure Followed by Heating at const Volume')
disp('J',Q,'Heat Required')
disp('J',W,'Work Required')
disp('J',del_H,'Change in enthalpy')
disp('J',del_U,'Change in Energy')
//(b)-heating at Const Volume Followed by cooling at const Pressure
T2=T1*(P2/P1);//K
del_U1=round(Cv*(T2-T1));//J
Q1=del_U1;
del_H=round(Cp*(T1-T2));//J
Q2=del_H;
del_U2=round(del_H-(P2*(10^5)*(V2-V1)));//J
Q=Q1+Q2;
del_U=0;
W=del_U-Q;//J
del_H=0;//const Temperature
disp('(b) Heating at const Volume Followed by Cooling at const Pressure')
disp('J',Q,'Heat Required')
disp('J',W,'Work Required')
disp('J',del_H,'Change in enthalpy')
disp('J',del_U,'Change in Energy')


//Note
disp('Note : The Answer varies From That in the book because in Book 4956.44 has been rounded to 4958 which is absurd')
//End