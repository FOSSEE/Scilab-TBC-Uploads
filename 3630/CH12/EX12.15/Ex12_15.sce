RD=8200;
Zin=1290;
rD1=(RD*Zin)/(RD+Zin);
Gm=0.002;
AvBJT=Gm*rD1;
Zin=1800;
rD2=(RD*Zin)/(RD+Zin);
AvJFET=Gm*rD2;
disp(' ',AvBJT,"AvBJT=")//The answers vary due to round off error
disp(' ',AvJFET,"AvJFET=")//The answers vary due to round off error

