clear;
clc;

//Caption:Output Levels for a given input in a silicon transistor
//Given Data
R1=15;//in K
R2=100;//in K
//R1 and R2 are voltages at base which acts as potential divider
Rc=2.2;//voltage at collector in K
hfe=30;

//For vi=0
Vb = (R1/(R1+R2))*(-12);//Voltage at base in V
disp('V',Vb,'Vb=');
//A bias of 0V is required to cut off a silicon emitter junction transistor   given in table
Vo = 0;//in V
disp('Vo',Vo,'Vo = ');

//For vi=12
vi=12;//in V
//Few standard values for silicon transistor
Vbesat=0.8;//in V
Vcesat=0.2;//in V
//Assumption: Q is in saturation region
Ic = (vi-Vcesat)/Rc;//Collector Current
disp('mA',Ic,'Ic=');
Ibmin=(Ic/hfe);//Mininmum current at the base
disp('mA',Ibmin,'Ibmin=');
I1=(vi-Vbesat)/R1;//Current in R1
I2=(Vbesat-(-12))/100;//Current in R2
Ib = I1-I2;//Base current
disp('mA',Ib,'Ib=');

if(Ib>Ibmin)
    disp('Since Ib>Ibmin , The transistor is in saturation region and drop is Vcesat');
    vo=Vcesat;
    disp('V',vo,'vo=');
end

//end