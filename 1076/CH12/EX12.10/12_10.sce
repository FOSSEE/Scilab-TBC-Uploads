clear;
clc;

ef=10000;
Zc=400;
iF=ef/Zc
mprintf("\n(a)\nIncident Wave magnitude= %d A",iF)

R=1000
et=ef*(R*2)/(R+Zc);
it=et/R;
er=et-ef;
mprintf("\n(b)\nSurge Voltage Reflected= %.3f KV",er/1000)
ir=-1*er/Zc
mprintf("\nSurge Current Reflected= %.3f A",ir)
edr=et*it;
mprintf("\nRate of dissipation of energy= %.2f KW",edr/1000)
err=er*-ir;
mprintf("\nRate of reflection of energy= %.3f KW",err/1000)

mprintf("\n(c)\nfor complete dissipation, R=Zc= %.0f ohm",Zc);

R=50
et=ef*(R*2)/(R+Zc);
mprintf("\n(d)\nSurge Voltage Transmitted= %.3f KV",et/1000)
it=et/R;
mprintf("\nSurge Current Transmitted= %.2f A",it)
er=et-ef;
mprintf("\nSurge Voltage Reflected= %.3f kV",er/1000)
ir=-1*er/Zc
mprintf("\nSurge Current Reflected= %.3f A",ir)
edr=et*it;
mprintf("\nRate of dissipation of energy= %.2f KW",edr/1000)
err=er*-ir;
mprintf("\nRate of reflection of energy= %.2f KW",err/1000)
