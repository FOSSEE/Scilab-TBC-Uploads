clc;clear;
//Example  13.1

//given data
mO2=3;
mN2=5;
mCH4=12;
//molecular masses
MO2=32;
MN2=28;
MCH4=16;

//constants used
Ru=8.314;//in kJ/kg - K

//calculations

//part - a
mm=mO2+mN2+mCH4;
mfO2=mO2/mm;
mfN2=mN2/mm;
mfCH4=mCH4/mm;
disp(mfO2,'mass fraction of oxygen is');
disp(mfN2,'mass fraction of nitrogen is');
disp(mfCH4,'mass fraction of methane is');

//part - b
NO2=mO2/MO2;
NN2=mN2/MN2;
NCH4=mCH4/MCH4;
Nm=NO2+NN2+NCH4;
yO2=NO2/Nm;
yN2=NN2/Nm;
yCH4=NCH4/Nm;
disp(yO2,'mole fraction of oxygen is');
disp(yN2,'mole fraction of nitrogen is');
disp(yCH4,'mole fraction of methane is');

//part - c
Mm=mm/Nm;
disp(Mm,'average molecular mass in kg/kmol');
Rm=Ru/Mm;
disp(Rm,'gas constant of mixture in kJ/kg - K')
