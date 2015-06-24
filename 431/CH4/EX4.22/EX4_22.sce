//Calculating the slip,rotor speed,mechanical power developed,rotor copper loss per phase and resistance per phase
//Chapter 4
//Example 4.22
//page 316
clear;
clc; 
disp("Example 4.22")
f=50;...........................//frequency of induction motor in hertz
P=6;............................//pole
Ns=(120*f)/P;
printf("synchronous speed=%frpm",Ns)
fr=120/60;...........................//rotor frequency
S=fr/f;
printf("\nthe slip=%f",S)
Nr=Ns-(Ns*S);
printf("\nrotor speed=%frpm",Nr)
Rin=80;.......................//rotor input in kW
Rc=S*Rin;.....................//Rotor copper loss in kW
Ph=3;...............................//number of phases
Rcp=(Rc/Ph)*1000;.........................//loss per phase in watt
p=((Rin-Rc)*1000)/735.5;
printf("\nmechanical power developed=%fhp",p)
Ir=60;.........................//rotor current in amperes
R2=Rcp/(Ir)^2;
printf("\nrotor resistance per phase at rotor current 60A=%fohms",R2)