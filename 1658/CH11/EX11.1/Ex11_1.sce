clc
//e.g 11.1
Idss=15*10**-3;
Vgso=-5;
//Id=Idss*(1-(Vgs/Vgso))^2
Vgs=0;
Id=Idss*(1-(Vgs/Vgso))^2;
disp('mA',Id*10**3,"Id=");
Vgs1=-1;
Id=Idss*(1-(Vgs1/Vgso))^2;
disp('mA',Id*10**3,"Id=");
Vgs2=-4;
Id=Idss*(1-(Vgs2/Vgso))^2;
disp('mA',Id*10**3,"Id=");
