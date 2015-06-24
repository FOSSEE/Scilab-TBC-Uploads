Vmax=30;//given maximum voltage
Vmin=15;//given minimum voltage
//part a
Vc=(Vmax+Vmin)/2;//carrier voltage
disp(Vc,'carrier voltage is=');
//part b
m=(Vmax-Vmin)*100/(Vmax+Vmin);//modulation factor
disp(m,'value of modulation factor is=');
//part c
R=100;//given resistance
Pc=Vc*Vc/R;//carrier power
disp(Pc,'carrier power is=');
//part d
Psb=(m*m*Pc)/(2*10000);//sideband power
disp(Psb,'sideband power is=');
//part e
Pt=Pc+Psb;//total power
disp(Pt,'total power is=');
//part f
fc=1000000;//given carrier frequency
fi=3000;//given frequency
usf=fc+fi;//upper side frequency
lsf=fc-fi;//lower side frequency
disp(usf,'upper side frequency is=');
disp(lsf,'lower side frequency is=');
//part g
BW=usf-lsf;//bandwidth
disp(BW,'Bw is=');


