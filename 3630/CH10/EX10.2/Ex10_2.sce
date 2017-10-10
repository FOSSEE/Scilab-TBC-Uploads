clc;
Vcc=0.002; //Volt
Re=5000; //Ohm
Icsat=Vcc/Re; //Ampere
Vceoff=Vcc; //Volt
disp(' Amperes',Icsat,"Icsat=");
disp('Volt',Vceoff,"Vceoff=");
T1=0:2:10 //Here on X-axis T1=Vce=10V
T2=2:-0.4:0; //Here on the Y-Axis T2=Ic=2miliAmpere
plot(T1,T2)
xlabel('Vce(V)')
ylabel('Ic(mA)')


