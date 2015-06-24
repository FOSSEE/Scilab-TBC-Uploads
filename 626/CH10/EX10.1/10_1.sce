clear;
clc;
close;
disp("Example 10.1")
cmap=[14.1,6.50,20.0,0.82;13.5,5.88,18.1,0.84;13,5.32,16.4,0.83;12.5,4.81,14.8,0.83;12,4.36,13.4,0.83;11.5,4,12.2,0.84]
disp(cmap,"Compressor map data in table:")
Cpc=1004
Cpt=1156
f=0.03 //fuel-to-air ratio
em=0.995 //efficiency
T=6 //T=Tt4/Tt2
pb=0.95 //burner pressure ratio
gmt=1.33 //gamma turbine
gmc=1.4
i=6
b=1
g1=[]
gc1=1
g2=[]
gc2=1
g3=[]
gc3=1
g4=[]
gc4=1
z0=[0.82:0.03:0.97]
for b=1:6
    Nc2=cmap(i,1)
    pc=cmap(i,2)
    mc2=cmap(i,3)
    ec=cmap(i,4)
    i=i-1
tc=1+(1/ec)*(pc^((gmc-1)/gmc)-1)
ffp=T-tc
tt=1-(Cpc/Cpt)*((tc-1)/(em*(1+f)*(T)))
Nc4=Nc2/T^(1/2)
mc4=mc2*((1+f)*(T)^(1/2))/(pb*pc)
pt=(1-(1-tt)/ec)^(gmt/(gmt-1)) //Assuming et=ec i.e. same efficiency
var=T-tc //fuel flow parameter in gas generator
p52=pb*pc*pt
T52=T-(Cpc/Cpt)*(tc-1)/(em*(1+f))
g1(gc1)=p52
gc1=gc1+1
g3(gc3)=T52
gc3=gc3+1
g4(gc4)=var
gc4=gc4+1

end
plot2d(z0,g1,2)
xlabel("% Nc2 Design")
ylabel("Ratios")
title("GAS GENERATOR PUMPING CHARACTERISTCS")
xgrid
plot2d(z0,g3,5)
plot2d(z0,g4,6)
legend("pt5/pt2","Tt5/Tt2","Fuel flow prameter in gas generator")












