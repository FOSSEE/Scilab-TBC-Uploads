// Part (a)
h1 = 2758; h2 = 1817; h3 = 192; h4 = 200;
Wt = h1-h2; Wp = h4-h3;
Q1 = h1-h4; Wnet = Wt-Wp;
cpg = 1.1;
n1 = Wnet/Wt;
WR = Wnet/Wp;
Q1_ = 100;
PO = n1*Q1_;
cp = 1000;
wg = (Q1_/(833-450));
EIR = wg*cpg*((833-300)-300*(log(833/300)));
n2 = PO/EIR ;
disp("Part (a)")
disp("%",n1*100,"n1 is")
disp("%",n2*100,"n2 is")
disp(WR,"Work ratio is")
// Part (b)
h1b = 3398; h2b = 2130; h3b = 192; h4b = 200;
Wtb = 1268; Wpb = 8; Q1b = 3198;
n1b = (Wt-Wp)/Q1;
WRb = (Wt-Wp)/Wt;
EIRb = 59.3;
Wnetb = Q1b*n1b;
n2b = Wnetb/EIRb;
disp("Part (b)")
disp("%",n1b*100,"n1 is")
disp("%",n2b*100,"n2 is")
disp(WRb,"Work ratio is")
// Part (c)
h1c = 3398; h2c = 2761; h3c = 3482; h4c = 2522; h5c = 192; h6c = 200;
Wt1 = 637; Wt2 = 960; Wtc = Wt1+Wt2; Wpc = 8;
Wnetc = 1589; Q1c = 3198+721;
n1c = Wnetc/Q1c;
WRc = Wnetc/Wtc;
POc = Q1_*n1c;
EIRc = 59.3;
n2c = POc/EIRc;
disp("Part (c)")
disp("%",n1c*100,"n1 is")
disp("%",n2c*100,"n2 is")
disp(WRc,"Work ratio is")
// Part (d)
T3 = 318.8; T1 = 568;
n1d = 1-(T3/T1);
Q1d = 2758-1316;
Wnet = Q1d*n1d;
Wpd = 8; Wtd = 641;
WRd = (Wt-Wp)/Wt;
POd = Q1_*0.439;
EIRd = (Q1_/(833-593))*cpg*((833-300)-300*(log(833/300)));
n2d = POd/EIRd;
disp("Part (d)")
disp("%",n1d*100,"n1 is")
disp("%",n2d*100,"n2 is")
disp(WRd,"Work ratio is")