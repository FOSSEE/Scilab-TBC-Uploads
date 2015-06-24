clc
clear
disp("example 4 22")
t=16//working  time
d=300 //working days
hv=1;hvmd=50 //tariff on high voltage
lv=1.1;lvmd=60 //tariff on low voltage
al=250//avarage load
pf=0.8//power factor
md=300 //maximum demand
hvec=500//cost of hv equipment
l=0.05 //loss of hv equipment
id=0.12  //interest and deprecistion
ter=al*md*t 
mdv=md/pf
printf(" total energy requirement %2.2ekWH \n maximum demand %dKVA",ter,mdv)
disp("(a)HV supply")
chv=mdv*hvec
idc=chv*id
ere=ter/(1-l)
dch=mdv*hvmd
ech=round(ere*hv/1000)*1000
tanc=ech+dch+idc
printf(" cost of HV equipment Rs%e\n interest and depreciation charges Rs%d \n energy received %ekWh\n demand charges Rs%d \n energy charges Rs%2e \n total annual cost Rs%d",chv,idc,ere,dch,ech,tanc)
disp("(b) LV supply")
lvdc=mdv*lvmd
lvec=ter*lv
lvtac=lvec+lvdc
lvdac=lvtac-tanc
printf(" demand charges Rs%d \n energy charges Rs%2.e \n total annual cost Rs%d \n difference in annual cost Rs%d",lvdc,lvec,lvtac,lvdac)