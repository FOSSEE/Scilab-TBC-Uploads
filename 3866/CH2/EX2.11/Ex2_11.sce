clear; clc; close;

w=0.4;//in micrometer
l=100;//in nanometer
Cg=1.6;//in fF/micrometer
Ct=Cg*w;
Cgs1=0;Cgd1=0;Cgb1=Ct/2;//cutoff
Cgs2=Ct/2;Cgd2=Ct/2;Cgb2=0;//linear
Cgs3=(2*Ct)/3;Cgb3=0;Cgd3=0;//saturation
disp(Cgs1,'Cgs for cutoff region');//units in fF
disp(Cgd1,'Cgd for cutoff region');
disp(Cgb1,'Cgb for cutoff region');
disp(Cgs2,'Cgs for linear region');
disp(Cgd2,'Cgd for linear region');
disp(Cgb2,'Cgb for linear region');
disp(Cgs3,'Cgs for saturation region');
disp(Cgd3,'Cgs for saturation region');
disp(Cgb3,'Cgs for saturation region');
