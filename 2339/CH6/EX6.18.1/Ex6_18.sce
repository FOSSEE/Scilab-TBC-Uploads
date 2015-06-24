clc
clear

D=16;       //in cm
L=24;       //in cm
Vc=340;
V2=Vc;
G=1.4;

Vs=(22/7)*(1/4)*D*D*L;
V1=Vs+Vc;
r=V1/V2;

//Cut-off is 6% of the stroke
Co1=0.06;

V3=(Co1*(V1-V2))+V2;
Z=V3/V2;
x=(Z^G)-1;
y=(r^(G-1))*(G)*(Z-1);
Eff1=100*(1-((x)/(y)));



//Cut-off is 10% of the stroke
Co2=0.10;

V3=(Co2*(V1-V2))+V2;
Z=V3/V2;
x=(Z^G)-1;
y=(r^(G-1))*(G)*(Z-1);
Eff2=100*(1-((x)/(y)));

Loss=((Eff1-Eff2)*100)/Eff1;

printf('Loss: %2.2f Percent',r);
printf('\n');
