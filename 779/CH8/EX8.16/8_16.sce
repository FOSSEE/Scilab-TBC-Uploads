m = 1000; T0 = 300; P0 = 1; 
T1 = 300;
T2 = 273-20; Tf = 273-2.2;
Cb = 1.7; Ca = 3.2;
Lh = 235;
H12 = m*((Cb*(Tf-T2))+Lh+(Ca*(T1-Tf)));
H21 = -H12;
S12 = m*((Cb*log(Tf/T2))+(Lh/Tf)+(Ca*log(T1/Tf)));
S21 = -S12;
E = H21-T0*S21;
disp("kJ",E,"Energy produced is")
