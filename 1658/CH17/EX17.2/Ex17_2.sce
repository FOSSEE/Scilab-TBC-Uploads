clc;
//e.g 17.2
vm=200;
Rl=1*10**3;
//ALPHA=0degree
Vdc=vm*0.318;
Idc=Vdc/Rl;
P=Vdc*Idc;
disp('mW',P*10**3,"P=");"OR";disp('W',P*1,"P=");
//alpha=45 degree
Vdc=vm*0.27;
Idc=Vdc/Rl;
P=Vdc*Idc;
disp('mW',P*10**3,"P=");"OR";disp('W',P*1,"P=");
//alpha=90 degree
Vdc=vm*0.159;
Idc=Vdc/Rl;
P=Vdc*Idc;
disp('mW',P*10**3,"P=");"OR";disp('W',P*1,"P=");
//alpha=135 degree
Vdc=vm*0.04660;
Idc=Vdc/Rl;
P=Vdc*Idc;
disp('mW',P*10**3,"P=");"OR";
