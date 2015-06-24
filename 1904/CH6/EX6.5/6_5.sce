//To find the pu voltages and tolerable and favourable voltages
//Page 310
clc;
clear;

N=19; //Number Transformers
St=500; //Load on each transformer in kVA
L=5096+(%i*3158); //Load
Vlf=114; //Favourable Voltage
Vlt=111; //Tolerable Volatage
Vb=125; //Base Voltage

//Per Unit Tolerable and favourable voltages
puVlf=Vlf/Vb;
puVlt=Vlt/Vb;

ZM=0.181+(%i*0.115); //The Positive Sequence Impedance
ZTi=0.0086+(%i*0.0492); //Transformer Impedance for 500kVA
ZT=2*ZTi; //Transformer Impedance for 1000kVA

AAF=N*St/abs(L); //Actual Application Factor

printf('\na) The Lowest favourable Voltage is %g pu and The Lowest tolerable voltage is %g pu\n',puVlf,puVlt)
printf('b) There Are No buses in Table 6-5, for the first contingency outage which satisfy the necessary condition\n')
printf('c) For Second Contingency Outage\n')
printf('1) Less than Favourable Voltage are B,C,J,K,R and S\n')
printf('2) Less than Tolerable Voltage are B,C,J,K.\n')
printf('d) ZM/ZT = %g and (1/2)*ZM/ZT = %g respectively.\n',(abs(ZM)/abs(ZT)),(1/2)*(abs(ZM)/abs(ZT)))
printf('The Actual Application Factor is %g\n',AAF)
printf('Therefore the Design of this network is sufficient\n')
