//Calculate the efficiences of the generator at full load
//Chapter 2
//Example 2.34
//page 150
clear;
clc; 
disp("Example 2.34")
Ig=2000;.............................//output current of generator in amperes
I=380;...............................//Input current from supply mains in amperes
Effi=sqrt(Ig/(Ig+I))*100;..................//Efficiency of generator assuming equal efficiencies of the two machines
printf("Efficiences of the generator at full load assuming equal efficiencies=%fpercent",Effi)
S=22;............................//Shunt field current of generator
G=Ig+S;........................//Armature current of generator in amperes
R=0.01;...............................//Resistance of the armature circuit of each machine in ohms
Gc=((G)^2)*R;..........................//copper loss in arrmature circuit of generator in W
V=500;................................//Voltage in volts
L=V*S;..............................//loss in the field circuit of the generator in W
T=Ig+I;............................//total current suuply in amperes
Sf=17;........................................//shunt field current of motor in amperes
A=T-Sf;..............................//armature current in motor in amperes
Lc=((A)^2)*R;........................//loss in armature circuit of motor in amperes
Lf=V*Sf;.................................//loss in the shunt field circuit of motor in W
Tin=V*I;......................//total input to motor and generator in W
Ml=Tin-(Gc+L+Lc+Lf);.....................//iron,friction and windage loss in both machines in W
Me=Ml/2;...................................//iron,friction and windage loss in each machine in W
p=1000;.....................//power in kW
OP=(Ig*V)/p;........................//full load output of the generator
Eff=(p*100)/(p+((Gc+L+Me)/1000));
printf("\nEfficiency of the generator at full load=%fpercent",Eff)