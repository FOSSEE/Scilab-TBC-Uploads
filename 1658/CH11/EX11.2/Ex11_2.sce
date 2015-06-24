clc;
Vgs=-5:-5:-20;//Id=Idss*(1-(Vgs/Vgso))^2
Vgso=-20;
Idss=12*10**-3;
Id=Idss*(1-(Vgs/Vgso))^2;
disp('mA',Id*10**3,"Id=");
y=0:1:12;
x=0:-5:-20;
a=gca() //get the current axes
a.box="off";
a.y_location="right";
plot2d(Vgs,Id);
xlabel("Gate-to-source voltage  (VGS)");
ylabel("Drain current  ID(mA)");
