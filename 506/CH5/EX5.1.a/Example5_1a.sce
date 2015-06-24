clear;
clc;

//Example 1.1
//Caption : Program to find transistor currents for npn transistor.

//Given Values

//Silicon Transistor
B=100;   //Beta
Ico=20;  //in nA 
Rc=3;
Rb=200; 
Vbb=5;   //in V
Vcc=10; //in V
Vbe=0.7;  //in Active region

//Applying KVL to base circuit

//Vbb+Rb*Ib+Vbe=0

Ib=(Vbb-Vbe)/Rb;  //in mA

//Ico<<Ib

Ic=B*Ib;  //in mA

//To verify the Active region Assumption

//Vcc+Rc*Ic+Vcb+Vbe=0

Vcb=(-Rc*Ic)+Vcc-Vbe;  //in V

disp('V',Vcb,'Vcb = ');
 
if(Vcb>0)
  disp('Positive value of Vcb represents reversed biased collector junction and Transistor in active region');
end

disp('mA',Ic,'Current in transistor(Ic) is ');

disp('mA',Ib,'Current in transistor(Ib) is ');

//End
