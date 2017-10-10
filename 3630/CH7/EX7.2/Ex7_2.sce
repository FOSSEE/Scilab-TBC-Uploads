clc;
Vcc=10; //volt
Rc=1000; //ohm
Icsat=Vcc/Rc; //Ampere
Vceoff=10; //Volt
Ic=[0.001 0.002 0.005] //Ampere
Vce=zeros(1,3); //Volt
for i=1:3
    Vce(1,i)=Vcc-Ic(1,i)*Rc; //volt
end
disp('V',Vce(1,1),"Vce1=");//The answers vary due to round off error
disp('V',Vce(1,2),"Vce2=");//The answers vary due to round off error
disp('V',Vce(1,3),"Vce3=");//The answers vary due to round off error

T1=0:1:10; // T1 axes is for voltage axes
T2=10:-1:0 // T2 axes is for Ic mA 
plot(T1,T2)
plot((Vce(1,1),Ic(1,1))
xlabel('Vce(V)')
ylabel('Ic(mA)')

