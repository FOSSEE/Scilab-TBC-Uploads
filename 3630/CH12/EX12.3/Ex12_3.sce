clc;
Vgs1=[-6 -4 -2 0];
Id1=[0 0.556 2.222 5];
Vgs2=[-0.5 -0.4 -0.2 0];
Id2=[0 0.04 0.36 1];
plot(Vgs1,Id1)
xgrid
set(gca(),"auto_clear","off")
plot2d(Vgs2,Id2)
xlabel('Vgs(V)')
ylabel('Id(mA)')

