Ton=0.000005;
Toff=0.000010;
Vin=24;
Vave=Vin*(Ton/(Ton+Toff));
disp('V',Vave,"Vave=");//The answers vary due to round off error
