clear;
clc;
//Example 3.14
R1=56;
R2=12.2;
Rc=2;
Re=.4;
Vcc=10;
Vbe=0.7;
b=100;
//fig.3.53(b)
Rth=R2*R1/(R1+R2);
printf('\nThevenin rquivalent resistance=%0.1f KOhm\n',Rth)
Vth=(R2/(R1+R2))*Vcc;
printf('\nThevenin equivalent voltage=%0.2f V\n',Vth)
Ibq=(Vth-Vbe)/(Rth+(1+b)*Re);
printf('\nbase current=%f mA\n',Ibq)
Icq=b*Ibq;
printf('\ncollector current=%.3f mA\n',Icq)
Ieq=(1+b)*Ibq;
printf('\nemitter current=%.2f mA\n',Ieq)
Vceq=Vcc-Icq*Rc-Ieq*Re;
printf('\ncollector emitter voltage=%.3f V\n',Vceq)
b=[50,100,150]
for x=b
Ibq=(Vth-Vbe)/(Rth+(1+x)*Re);
disp("Ibeq,Iceq,Ieq,Vceq")
disp(Ibq)
Icq=x*Ibq;
disp(Icq)
Ieq=(1+x)*Ibq;
disp(Ieq)
Vceq=Vcc-Icq*Rc-Ieq*Re;
disp(Vceq)
disp("")
end
