clear;
clc;
close;
disp("Example4.12")
M0=2.0 //Mach no.
p0=10//units in kPa
T0=228 // in K
gmc=1.4 //gamma compressor
Cpc=1004 //J/kg.K specific heat of compressor
pd=0.88 
ec=0.9
tl=8
Qr=42000 //kJ/kg
eb=0.98
pb=0.95
gmt=1.33 //gamma turbne
Cpt=1156 //J/kg.K specific heat turbine
et=0.82
em=0.995
tlAB=11
QrAB=42000 //kJ/kg
eAB=0.98
pAB=0.93
gmAB=1.3 // gama AB
CpAB=1243 //J/kg.K
pn=0.93
nc=24;
pc1=[1:0.01:nc];
a=[];
count=1;
g2=[]
cg2=1;
g3=[]
cg3=1;
g4=[]
cg4=1;
g5=[]
cg5=1;

pc=1;
for pc=1:0.01:24
    a0=((gmc-1)*Cpc*T0)^(1/2);
    V0=M0*a0;
    pt0=p0*(1+(((gmc-1)*(M0)^2)/2))^(gmc/(gmc-1)); //total flight pressure
    Tt0=T0*(1+(((gmc-1)*(M0)^2)/2)); //total flight temp
    Tt2=Tt0 ;//Adiabatic inlets
    pt2=pt0*pd; // in kPa
    pt3=pt2*pc; //compressor exit total pressure
    k2=((gmc-1)/(gmc*ec));
    //disp(k2)
    tc=pc^k2; //relation between temp and pressure ratios
    //disp(tc)
    Tt3=Tt2*tc; //total temp at compressor exit
    Tt4=Cpc*T0*tl/Cpt; //combustor exit total temp.
    pt4=pt3*pb; //combustor exit pressure
    f=(Cpt*Tt4-Cpc*Tt3)/(Qr*eb*1000-Cpt*Tt4); //fuel-to-air ratio in burner
    //disp(f)
    Tt5=Tt4-(Cpc*((Tt3-Tt2)/(Cpt*em*(1+f)))); // turbine exit total temp
    tt=Tt5/Tt4; //temp ratio in turbine
    pt=tt^(gmt/(et*(gmt-1)));
    pt5=pt4*pt; //in kPa
    pt7=pt5*pAB;
    Tt7=Cpc*T0*tlAB/CpAB; //afterburner exit
    fAB=(1+f)*((CpAB*Tt7)-(Cpt*Tt5))/((QrAB*eAB*1000)-(CpAB*Tt7));
    //disp(fAB);
    pt9=pt7*pn; //in kPA
    Tt9=Tt7 ;//adiabatic flow in nozzle
    p9=p0;
    M9=((2/(gmAB-1))*((pt9/p9)^(((gmAB-1)/gmAB))-1))^(1/2); //nozzle exit
    //disp(M9)
    T9=Tt9/(1+((gmAB-1)*(M9)^2)/2);
    a9=((gmAB-1)*CpAB*T9)^(1/2);
    //disp(a9)
    V9=M9*a9;
    //Performance parameters:
    st=(1+f+fAB)*V9-V0; //st=Fn/m0; specific thrust when nozzle is perfectly expanded
    ndst=((1+f+fAB)*V9/a0)-M0; //ndst=Fn/m0*ao ; nondimensional specific thrust
    TSFC=((f+fAB)/st)*10^6 ;//units mg/s/N
    eth=(((1+f+fAB)*((V9)^2)/2)-((V0)^2)/2)/(f*Qr*1000+fAB*QrAB*1000); //cycle thermal efficiency
    ep=st*V0/(((1+f+fAB)*(((V9)^2)/2))-((V0)^2)/2); //propulsive efficiency exact
    epa=2/(1+V9/V0) ;//approx
    oe=ep*eth;
    a(count)=TSFC;
    count = count+1;
    g2(cg2)=eth;
    cg2=cg2+1
    g3(cg3)=ep
    cg3=cg3+1
    g4(cg4)=oe
    cg4=cg4+1
    g5(cg5)=ndst
    cg5=cg5+1;
end
x=gca()
x.data_bounds=[1,50;24,75]
subplot(2,2,1)
plot2d1(pc1,a,2);
xlabel("Compressor pressure ratio")
ylabel("Thrust specific fuel consumption(mg/s/N)")
title("Graph between TSFC and Compression ratio.")
xgrid(1)
subplot(2,2,2)
y=gca()
y.data_bounds=[1,0.2;23,0.7]
plot2d2(pc1,g2,5);
xgrid(1)
xlabel("Compressor pressure ratio")
ylabel("Thermal, propulsive and overall efficiency")
title("Thermal, propulsive and overall efficiencies afterburning turbojet engine")
plot2d(pc1,g3,6)
plot2d(pc1,g4,2)
legend(['Thermal eff';'Propulsive eff';'Overall eff'])
subplot(2,2,3.5)
plot2d(pc1,g5,2)
xgrid(1)
xlabel("Compressor pressure ratio")
ylabel("Non-dimensional specific thrust")
title("Non-dimensional specific thrust afterburning turbojet engine")



