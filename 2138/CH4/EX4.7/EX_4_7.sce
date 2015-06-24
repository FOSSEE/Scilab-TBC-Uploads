//Example 4.7 // total consumption of factory in killo watts
clc;
clear;
close;
nl=400;//no. of lamps
wl=100;//wattage of lamps
w400=wl*nl;//wattage of 400 lamps in W
nf=100;//no. of fans
wf=40;//wattage of fans
w6=wf*nf;//wattage of 100 fans in W
nc=200;//no. of wall scokets
wc=60;//wattage of wall scckets
w2=wc*nc;//wattage of 200 wall sockets in Wh
tc= w400+w6+w2;//total consumption in kW
tc= w400+w6+w2;//total consumption in kW
h=5;// hours
ll=tc*10^-3*h;//lightning load in kWh
V=250;//in volts
I=20;//in amperes
Ml=V*I*10^-3;//miscellaneous loads in kW
Ml=V*I*10^-3;//miscellaneous loads in kW
hm=2;//hours
hl=50;//heating load in kW
Mhp=40;//BNHP
Mo= ((50*80*746)/(100*1000));//MOTOR AT 80% LOAD IN Kw
tl=tc*10^-3+Ml+hl+Mo;//total load in kW
disp(tl,"total load is,(kW)=")
It= (tl*10^3)/V;//total current taken buy the factory in amperes
disp(It,"total current taken by the factory is,(A)=")
r=0.03;//IN OHMS
Vc=It*r;//voltage drop in the cable
Vs=Vc+V;//voltage at the sending end of the feeder in volts
disp(Vs,"voltage at the sending end of the feeder is,(V)")
r=0.03;//IN OHMS
Vc=It*r;//voltage drop in the cable
Pw=It^2*r;//power wasted in kW
disp(Pw*10^-3,"power wasted is ,(kW)")
Mlh=Ml*hm;//miscellaneous load in kWh
te=Mlh+ll;//TOTAL ENERGY COSNUMED PER DAY
Nu=te*6;//NO. OF UNITS
Ec=(Nu*30)/100;// ENERGY CHARGE @30 PAISA PER UNIT
eCM=Ec+2+34.80;//TOTAL CHARGE AFTER TAX AND RENT IN RUPEES
hl=50;//heating load in kW
hlh=50*4;//heating load in kWh
Moh=Mo*8;//MOTOR LOAD IN kWh
TEP=hlh+Moh;//total energy per day
tepl=TEP*6;//total energy in 6 days
tepc=(tepl*35)/100;// energy charges @35 paisa per unit in rupees
tepcl=tepc+50+78.96;//total charges in rupess
disp(eCM,"total lightning charges including meter rent and electricy tax is,(Rs)=")
disp(tepcl,"total power charges including meter rent and electricy tax is,(Rs)=")
gt=tepcl+eCM;//
disp(gt,"grand total of bills is,(Rs)=")

