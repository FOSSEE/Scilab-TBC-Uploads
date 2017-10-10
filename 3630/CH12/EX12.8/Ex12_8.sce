clc;
R2=1500000;
R1=1500000;
Vdd=30;
Vg=Vdd*(R2/(R1+R2));
Rs=10000;
Id=Vg/Rs;
Vgsoff=-8;
Idss=0.016;
Vgs1=-8:1:0;
Id1=Idss*(1-(Vgs1/Vgsoff)).^2;
Vgsoff=-2;
Idss=0.004;
Vgs2=-2:1:0;
Id2=Idss*(1-(Vgs2/Vgsoff)).^2;
plot2d(Vgs1,Id1*1000)
xgrid
set(gca(),"auto_clear","off")
plot2d(Vgs2,Id2*1000)
set(gca(),"auto_clear","off")
Vgs3=-6:1:0;
Id3=((Vgs3.*-0.1)+1.5);
plot2d(Vgs3,Id3)
xlabel('Vgs(V)')
ylabel('Id(mA)')
xtitle('The voltage -divider dc bias line')

