// 2.9
clc;
Rnormal=10000/2;
Rpl=10000/50;
Rc1=Rnormal-3850;
Dnormal=Rc1/Rpl;
printf("Displacement = %.2f mm",Dnormal)
Rc2=Rnormal-7560;
Dnormal=Rc2/Rpl;
printf("\nDisplacement = %.2f mm",Dnormal)
disp('One displacement is positive and other is negative so two displacements are in the opposite direction')
Re=10*1/200;
printf("\nResolution = %.2f mm",Re)
