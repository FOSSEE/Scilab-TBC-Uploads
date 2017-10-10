clc;
Vceq=5.72; //Volt
PP1=2*Vceq; //Vpp(peak to peak voltage)
Icq=0.103; //Ampere
rc=25.7; //Ohm
PP2=2*Icq*rc; //Volt
disp('Vpp',PP1,"PP1=");//The answers vary due to round off error
disp('Vpp',PP2,"PP2=");//The answers vary due to round off error
