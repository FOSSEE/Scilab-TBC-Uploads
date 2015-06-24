clc
//Initialization of variables
p1=600 //psia
p2=0.2563 //psia
t1=486.21 //F
t2=60 //F
//calculations
disp("from steam tables,")
h1=1203.2
hf1=471.6
hfg1=731.6
h2=1088
hf2=28.06
hfg2=1059.9
s1=1.4454
sf1=0.6720
sfg1=0.7734
s2=2.0948
sf2=0.0555
sfg2=2.0393
xd=(s1-sf2)/sfg2
hd=hf2+xd*hfg2
xa=0.3023
ha=hf2+xa*hfg2
wbc=0
wda=0
wcd=h1-hd
wab=ha-hf1
W=wab+wcd+wbc+wda
Wrev=hfg1- (t2+459.7)*sfg1
etat=(t1-t2)/(t1+459.7)
etac=W/Wrev
etae=W/Wrev
Wr=Wrev/(wcd)
//results
printf("Thermal efficiency = %d percent",etat*100)
printf("\n Compression efficiency = %d percent",etac*100)
printf("\n Expansion efficiency = %d percent",etae*100)
printf("\n Work ratio = %.2f ",Wr)
