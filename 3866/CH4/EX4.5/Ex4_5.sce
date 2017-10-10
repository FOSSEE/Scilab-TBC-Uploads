clc; clear ; close;

Vol=0.1;//in volts
WL=100;//in nm
l=10^(-5);//in cm
un=270;//in cm^2/v.s
Vto=0.4;//in volts
Vdd=1.2;//in volts
el=0.6;//in volts
vsat=8*(10^6);//in cm/s
gam=0.2;
fi=0.44;
Vt=Vto+(gam*sqrt(Vol+(2*fi)))-gam*sqrt(2*fi);
k=(vsat*((Vdd-Vol-Vt)^2)*(1+Vol/el)*l)/((Vdd-Vol-Vt+el)*((Vdd-Vt)*Vol-(Vol^2)/2)*un);
Wl=WL*k;
disp(Vt,'Vtl(in volts)=');
disp(k,'ratio=');
disp(Wl,'Wl(in nm)=');//answers vary due to round off error
