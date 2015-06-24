clear;
clc;

//Caption : Program to find transistor currents for npn transistor and check whether transistor is in saturation region or not after adding a Emitter Transistor.

//Given Values

//Silicon Transistor

Beta=100;   //Beta
Rc=3;
Rb=50;
Re=2; 
Vbb=5;   //in V
Vcc=10; //in V
Vce=0.2; //in V
Vbe=0.8;  //in Active region
hFE=100;

//Assuming transistor in saturated region

//Applying KVL to base circuit

//-Vbb+Rb*Ib+Vbe+Re*(Ic+Ib)=0

//Simplifing (Rb+Re)Ib+Re*Ic=Vbb-Vbe

//Applying KVL to Collector circuit

//-Vcc+Rc*Ic+Vce+Re*(Ic+Ib)=0

//Simplifing Re*Ib+(Rc+Re)Ic=Vcc-Vce


A=[(Rb+Re) Re;Re,(Rc+Re)];
B=[(Vbb-Vbe);(Vcc-Vce)];
X=A\B;
Ib=X(1);
Ic=X(2);

Ib_min=Ic/hFE;

disp('mA',Ib_min,'Minimum Ib = ');


disp('mA',Ic,'Current in transistor(Ic)');

disp('mA',Ib,'Current in transistor(Ib)');

if(Ib>Ib_min)
  disp('Transistor in Saturated Region');
else
  disp('Transistor not in Saturated Region.Hence must be operating in Active region');    
end

//Ico<<Ib  Assuming

//Itot=Ib+Ic=Ib+B*Ib=(B+1)*Ib

//Applying KVL to base circuit

//Vbb+Rb*Ib+Vbe+Re*Itot=0

Ib=(Vbb-Vbe)/(Rb+(Re*(Beta+1)));  //in mA

Ic=Beta*Ib;  //in mA

//Hence Ico<<Ib

//To verify the Active region Assumption

//Vcc+Rc*Ic+Vcb+Vbe=0

Vcb=(-Rc*Ic)+Vcc-Vbe-(Re*(Beta+1)*Ib);  //in V

disp('V',Vcb,'Vcb = ');

if(Vcb>0)
  disp('Positive value of Vcb represents reversed biased collector junction and Transistor in active region');
end

disp('mA',Ic,'Current in transistor(Ic) is ');

disp('mA',Ib,'Current in transistor(Ib) is ');



//End
