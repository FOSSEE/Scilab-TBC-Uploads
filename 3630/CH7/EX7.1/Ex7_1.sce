clc;
Vcc=12; //volt
Vceoff=12; //volt
Rc=2000; //ohm
Icsat=Vceoff/Rc; //Ampere//v=r*i
disp('mA',Icsat*1000,"Icsat=");//The answers vary due to round off error
T1=0:2:12; // T1 axes is for voltage axes
T2=6:-1:0 // T2 axes is for Ic mA And T2(max)=Icsat=6 mA 
plot(T1,T2)
xlabel('Vce(V)')
ylabel('Ic(mA)')
