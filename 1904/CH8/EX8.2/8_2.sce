//To determine the Capacitor bank required to correct power factor of induction motor
//Page 393
clc;
clear;

Vll=4.16; //Line to Line Voltage in kV
Pr=(500*0.7457); //Rating of motor in kW
pf1=0.75; //Initial Power Factor
pfn=0.9; //Improved Power Factor
eff=0.88; //Efficiency
P=Pr/eff; //Input Power of Induction Motor
Q1=P*tand(acosd(pf1)); //Reactive Power
Q2=P*tand(acosd(pfn)); //REactive power of motor after power factor improvement
f=60; //Frequency of supply
w=2*%pi*f; //Angular Frequency
Qc=Q1-Q2; //Reactive Power of Capacitor
Il=Qc/(sqrt(3)*Vll);

//Capacitor Connectd in Delta
Ic1=Il/(sqrt(3));
Xc1=Vll*1000/Ic1; //Reactance of each capacitor
C1=(10^6)/(w*Xc1); //Capacitance in Micro Farad

//Capacitor Connected in Wye
Ic2=Il;
Xc2=Vll*1000/(sqrt(3)*Ic2); //Reactance of each capacitor
C2=(10^6)/(w*Xc2); //Capacitance in Micro Farad

printf('\na) Rating of Capacitor Bank is %g kVAr\n',Qc)
printf('b) The Value of Capacitance if there are connected in delta is %g micro F\n',C1)
printf('c) The Value of Capacitance if there are connected in wye is %g micro F\n',C2)
