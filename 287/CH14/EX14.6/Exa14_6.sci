//Design a TDMA frame for a cellular system

Nca1 = 1'
Nca2 = 2;
Rbmin = 8;
a1 = 0.1;
nf = 0.75;
Rc = 0.5;

Nslot1 = 16/Nca1;
Nslot2 = 16/Nca2;
Rs1 = (Rbmin*(1+a1)*Nslot1)/(nf*Rc);
Rs2 = (Rbmin*(1+a1)*Nslot2)/(nf*Rc);

disp(Nslot1, 'Nslot for Nca=1')
disp(Nslot2, 'Nslot for Nca=2')
disp(Rs1, 'Rs for Nca=1 (in ksymbols/s)')
disp(Rs2, 'Rs for Nca=2 (in ksymbols/s)')