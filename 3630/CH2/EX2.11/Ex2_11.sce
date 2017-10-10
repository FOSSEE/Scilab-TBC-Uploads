clc;
//ex2.11
Pdmax=500; //miliwatt
Vf=0.7; //volt
Io=Pdmax/Vf; //Ampere//using P=V*I
Ifmax=(80/100)*Io; //Ampere//maximum forward current 80% of IO
disp( 'mA',Io,"Io="); //The answers vary due to round off error
disp('mA',Ifmax,"Ifmax="); //The answers vary due to round off error
