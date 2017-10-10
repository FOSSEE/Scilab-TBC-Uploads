clc;
clear;
Sfl=0.05;//slip of full load current
disp('during direct switching')
Vmp=1;
Imp=6*Vmp;
Ila=6*Vmp;
Ta=0.3*Imp;
disp(Ta,Ila,Imp,Vmp,'The motor phase voltage,motor phase current line current and torque during direct switching are:')
disp('During stator resistance switching:')
Vmpb=0.33;
Impb=6*Vmpb;
Ilb=6*Vmpb;
Tb=0.3*Impb;
disp(Tb,Ilb,Impb,Vmpb,'The motor phase voltage,motor phase current line current and torque during stator resistance switching are:')
disp('During auto transformer starting with the motor current limied to 2pu')
Vmpc=0.33;
Impc=6*Vmpc;
Ilc=6*Vmpc;
Tc=0.3*Impc;
disp(Tc,Ilc,Impc,Vmpc,'The motor phase voltage,motor phase current line current and torque during auto transformer starting with the motor current limied to 2pu switching are:')
disp('During star delta starting:')
Vmpd=0.58;
Impd=6*Vmpd;
Ild=6*Vmpd;
Td=0.3*Impd;
disp(Td,Ild,Impd,Vmpd,'The motor phase voltage,motor phase current line current and torque during star delta starting are:')
disp('For full load torque ')
Ilat=(0.75^2);
disp('times the full load current',Ilat,'The line current is:')
