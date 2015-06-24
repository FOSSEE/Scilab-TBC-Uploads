//Example 2.1://wattmeetr reading and error
clc;
clear;
close;
disp("for Ist method")
v=50;//volts
i=20;//amperes
pf=0.8;//power factor
pl=v*i*pf;//true power
vc=(50*pf)+%i*v*sqrt(1-pf^2);//complex form 
ic=i+%i*0;//
r1=0.01;//ohms
vpl=vc+(i*r1);//voltage across pressure coil
wrlc1=real(vpl)*real(ic);//
er=(wrlc1-pl)/(pl);//
disp(wrlc1,"wattmeter reading is,(W)=")
disp(er*100,"percentage error is high (%)")
disp("for 2nd method")
r2=1000;//ohms
ic1=ic+(vc/r2);//
wrlc2=real(vc)*real(ic1)+imag(vc)*imag(ic1);//
er1=(wrlc2-pl)/(pl);//
disp(wrlc2,"wattmeter reading ,(W)=")
disp(er1*100,"percentage error is high (%)")
