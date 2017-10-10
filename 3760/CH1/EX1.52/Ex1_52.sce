clc;
// two transformers are connected in parallel and has following data
P1=100; // rated KVA of transformer 1
E11=6600; // rated primary voltage for transformer 1
E21=230; // rated secondary voltage for transformer 1
z1=1.5+4*%i // percentage leakage impedance for transformer 1
P2=200; // rated KVA of transformer 2
E12=6600; // rated primary voltage for transformer 2
E22=220; // rated secondary voltage for transformer 2
z2=1+5*%i // percentage leakage impedance for transformer 2
i1=(P1*1000)/E21; // full load current for transformer 1
ze1=(z1/100)*(E21^2/(P1*1000)); // leakage impedance for transformer 1 in ohm
i2=(P2*1000)/E22; // full load current for transformer 2
ze2=(z2/100)*(E22^2/(P2*1000)); // leakage impedance for transformer 2 in ohm
io=(E21-E22)/abs(ze1+ze2); // circulating current at no load
printf('No load circulating current is %f A\n',real(io));
poh=abs(io)^2*(real(ze1)+real(ze2));
printf(' Ohmic losses due to circulting current is %f W\n',poh);
vd=abs(io)*abs(ze1); // voltage drop in leakage impedance
vt=E21-vd; // secondary terminal voltage
printf('secondary terminal voltage is %f v',vt);
