clc;
//e.g 11.4
Idss=20*10**-3;
vp=-8;
gmo=5000*10**-6;
vgs=-4;
//Id=Idss*(1-(Vgs/Vgso))^2
Id=Idss*(1-(vgs/vp))^2;
disp('mA',Id*10**3,"Id=");
gm=gmo*(1-(vgs/vp));
disp('microsec',gm*10**6,"gm=");
