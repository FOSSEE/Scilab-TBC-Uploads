clc;
//e.g 11.5
Idon=10*10**-3;
vgs=-12;
vgsth=-3;
//Id=K*(vgs-vgsth)^2
//Idon=K*(vgs-vgsth)^2
k=Idon/((vgs-vgsth)^2);
disp('mA',k*10**3,"k=");
vgs1=-6;
Idon=k*(vgs1-vgsth)^2;
disp('mA',Idon*10**3,"Idon=");
