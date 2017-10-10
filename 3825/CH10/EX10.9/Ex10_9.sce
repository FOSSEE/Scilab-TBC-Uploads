clc
//Ex uses data from Ex10_8.sce
//we first write Ex10_7 for it
Ps=4.241 //in kPa
pw2=Ps
P=101.325 //in kPa
pa=P-pw2
w2=0.622*(pw2/pa)
hfg2=2430.74
hg1=2574.4
hf2=125.66
Cp=1.005
T1=40 //in celsius
T2=30 //in celsius
w1=(Cp*(T2-T1)+w2*hfg2)/(hg1-hf2)
pw=P/(1+(0.622/w1))
ha1=Cp*T1
h1star=ha1+(w1*hg1)
mprintf("h1star=%fkJ/kg dry air",h1star)//ans vary due to roundoff error

