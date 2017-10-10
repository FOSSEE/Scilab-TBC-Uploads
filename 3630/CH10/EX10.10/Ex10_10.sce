clc;
Vee=5; //Volt
Vbe=0.7; //Volt
Re=13000; //Ohm
Ie=0.000331 //Ampere
re=0.025/Ie; //Ohm
Zin=re; //Ohm
Rc=10000; //Ohm
Zout=Rc; //Ohm
RL=5100; //Ohm
rc=(RL*Rc)/(RL+Rc); //Ohm
Av=rc/re; 
Ai=rc/RL;
disp('',Av,"Av=");
disp('',Ai,"Ai=");
disp('Ohm',Zin,"Zin=");//The answers vary due to round off error

disp('Ohm',Zout,"Zout=");//The answers vary due to round off error

