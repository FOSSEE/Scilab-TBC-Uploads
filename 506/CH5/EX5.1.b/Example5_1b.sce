clear;
clc;

//Example 1.2
//Caption : Program to find transistor currents for npn transistor after adding resistor to circuit.

//Given Values

//Silicon Transistor
B=100;   //Beta
Ico=20;  //in nA 
Rc=3;
Ico=20;  //in nA
Rb=200; 
Re=2;
Vbb=5;   //in V
Vcc=10; //in V
Vbe=0.7;  //in Active region

//Ico<<Ib  Assuming

//Itot=Ib+Ic=Ib+B*Ib=(B+1)*Ib

//Applying KVL to base circuit

//Vbb+Rb*Ib+Vbe+Re*Itot=0

Ib=(Vbb-Vbe)/(Rb+(Re*(B+1)));  //in mA

Ic=B*Ib;  //in mA

//Hence Ico<<Ib

//To verify the Active region Assumption

//Vcc+Rc*Ic+Vcb+Vbe=0

Vcb=(-Rc*Ic)+Vcc-Vbe-(Re*(B+1)*Ib);  //in V

disp('V',Vcb,'Vcb = ');

if(Vcb>0)
  disp('Positive value of Vcb represents reversed biased collector junction and Transistor in active region');
end

disp('mA',Ic,'Current in transistor(Ic) is ');

disp('mA',Ib,'Current in transistor(Ib) is ');


//End
