//Calculating the displacement and resolution of the potentiometer
clc;
Rnormal=10000/2;
Rpl=10000/50;
Rc1=Rnormal-3850;
Dnormal=Rc1/Rpl;
disp(Dnormal,'Displacement(mm)=')
Rc2=Rnormal-7560;
Dnormal=Rc2/Rpl;
disp(Dnormal,'Displacement(mm)=')
disp('since one displacement is positive and other is negative so two displacements are in the opposite direction')
Re=10*1/200;
disp(Re,'Resolution (mm)=')