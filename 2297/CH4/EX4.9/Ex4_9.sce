// Example 4.9;parameter of primary side ,regulation and efficiency
clc;
close;
clear;
//given
format('v',6)
po=100;//watts
v1=200;//volts
io=1;//amperes
ocpf=po/(v1*io);//open circuit power factor
sinpf=sqrt(1-ocpf^2);//
im=io*sinpf;//in amperes
iw=io*ocpf;//current in amperes
rm=v1/iw;//ohms
xm=v1/im;//in ohms
vs=15;//volts
ia=10;//amperes
zo2=vs/ia;//in ohms
wa=85;//watts
ro2=wa/(ia)^2;//ohms
e2=400;//volts
e1=200;//volts
k=e2/e1;//transformation ratio
zo1=zo2/k^2;//ohms
ro1=ro2/k^2;//ohms
xo1=sqrt(zo1^2-ro1^2);//ohms
disp(" part (a)")
disp(im,"magnetising component of no load current (Im) is,(A)=")
disp(iw,"working component of no load current (Iw) is,(A)=")
disp(rm,"resistance for primary side  (Rm) is,(Ohm)=")
disp(xm,"reactance for primary ohms (Xm) is,(Ohm)=")
disp(xo1,"impedence for primary side (X01) is,(Ohm)=")
disp("part (b)")
kva=4000;//kVA
i2=kva/e2;//in amperes
xo2=sqrt(zo2^2-ro2^2);//ohms
pf=0.8;// power factor
vlag=i2*(ro2*pf+xo2*sqrt(1-pf^2));//in volts
prld=(vlag*po)/e2;//
vlag1=i2*(ro2*pf-xo2*sqrt(1-pf^2));//in volts
prld1=(vlag1*po)/e2;//
disp(prld,"percentage regulation on lagging load is,(%)=")
disp(prld1,"percentage regulation on leading load is,(%)=")
disp("part (c)")
cl=85;//copper losses
nloss=100;//no load losses
fll=cl+nloss;//full load losses
pf=0.8;//power factor
flo=kva*pf;//efficiency 
effl=flo/(flo+fll);//efficiency 
hll=(1/2)^2*cl+nloss;//loss in watts
op=(1/2)*kva*pf;//ouput power in watts
efhl=op/(hll+op);//efficiency at half load
disp(effl*100,"efficiency at full load is,(%)=")
disp(efhl*100,"efficiency at half load is,(%)=")
