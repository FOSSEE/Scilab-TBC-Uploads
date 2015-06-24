clear;
clc;

//Caption : Program to find transistor currents for npn transistor and check whether transistor is in saturation region or not.

//Given Values

//Silicon Transistor

Rc=3;
Rb=50; 
Vbb=5;   //in V
Vcc=10; //in V
Vce=0.2; //in V
Vbe=0.8;  //in Active region
hFE=100;

//Assuming transistor in saturated region

//Applying KVL to base circuit

//Vbb+Rb*Ib+Vbe=0

Ib=(Vbb-Vbe)/Rb;  //in mA

//Applying KVL to Collector circuit

//Vcc+Rc*Ic+Vce=0

Ic=(Vcc-Vce)/Rc;  //in mA

Ib_min=Ic/hFE;

disp('mA',Ib_min,'Minimum Ib = ');

if(Ib>Ib_min)
  disp('Transistor in saturated Region');
end

disp('mA',Ic,'Current in transistor(Ic) is');

disp('mA',Ib,'Current in transistor(Ib) is');


//End
