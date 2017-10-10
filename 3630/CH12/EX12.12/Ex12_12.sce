Vgs1=-5;
Vgs2=-0.75;
Gm01=0.006;
Gm02=0.002;
Vgsoff1=-8;
Vgsoff2=-2;
Gm1=Gm01*(1-(Vgs1/Vgsoff1));
Gm2=Gm02*(1-(Vgs2/Vgsoff2));
RD=8200;
RL=100000;
rD=(RD*RL)/(RD+RL);
Avmax=rD*Gm1;
Avmin=rD*Gm2;
disp(' ',Avmax,"Avmax=")//The answers vary due to round off error
disp(' ',Avmin,"Avmin=")//The answers vary due to round off error



