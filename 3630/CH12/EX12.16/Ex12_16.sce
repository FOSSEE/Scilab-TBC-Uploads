clc;
Vgs1=-0.5
Vgs2=-5;
Gm01=0.002;
Gm02=0.006;
Vgsoff1=-2;
Vgsoff2=-8;
Gm1=Gm01*(1-(Vgs1/Vgsoff1));
Gm2=Gm02*(1-(Vgs2/Vgsoff2));
Rs=5100;
RL=20000;
rS=(Rs*RL)/(Rs+RL);
Avmin=rS/(rS+(1/Gm1));
Avmax=rS/(rS+(1/Gm2));
disp(' ',Avmax,"Avmax=")//The answers vary due to round off error
disp(' ',Avmin,"Avmin=")//The answers vary due to round off error
Gm11=1/667;
Gm22=1/444;
Zoutmax=(Rs/Gm11)/(Rs+(1/Gm11));
Zoutmin=(Rs/Gm22)/(Rs+(1/Gm22));
disp('Ohm',Zoutmax,"Zoutmax=")//The answers vary due to round off error
disp('Ohm',Zoutmin,"Zoutmin=")//The answers vary due to round off error
R1=1000000;
R2=1000000;
Zin=(R1*R2)/(R1+R2);
disp('KOhm',Zin/1000,"Zin=")//The answers vary due to round off error


