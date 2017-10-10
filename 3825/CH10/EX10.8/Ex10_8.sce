clc
Ps=4.241 //in kPa
pw2=Ps
P=101.325 //in kPa
pa=P-pw2
w2=0.622*(pw2/pa)
mprintf("w2=%f kg H2O/kg dry air\n",w2)//ans vary due to roundoff error
hfg2=2430.74
hg1=2574.4
hf2=125.66
Cp=1.005
T1=40 //in celsius
T2=30 //in celsius
w1=(Cp*(T2-T1)+w2*hfg2)/(hg1-hf2)
mprintf("w1=%f kg H2O/kg dry air\n",w1)//ans vary due to roundoff error
pw=P/(1+(0.622/w1))
mprintf("pw=%fkPa\n",pw)//ans vary due to roundoff error
Ps=7.375
phi1=pw/Ps
mprintf("phi1=%f",phi1)//ans vary due to roundoff error

