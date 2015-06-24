clc;
TL=-15; // Source temperature in degree celcius
TH=40; // Sink temperature in degree celcius
// From the table of properties of Freon - 12
h2=203.05; h3=74.53; hf4=22.31; hg4=180.85; // specific enthalpy in kJ/kg 
s1=0.682; s3=0.2716; sf4=0.0906; sg4=0.7046; sfg4=sg4-sf4;// specific entropy in kJ/kg K
sf1=sf4; sfg1=sfg4; s2=s1; s4=s3; hf1=hf4; hg1=hg4; hfg4=hg4-hf4; hfg1=hfg4;// refer figure 8.20 
x1=(s1-sf1)/sfg1; // Dryness fraction at state 1
x4=(s4-sf4)/sfg4; // dryness fraction at state 4
h1=hf1+x1*hfg1; h4=hf4+x4*hfg4; // specific enthalpy in kJ/kg 
wc=h2-h1; // work of compression
wE=h3-h4; // Work of expansion
qL=h1-h4; // Refrigerating effect
qH=h2-h3; // Heat rejected
wnet=wc-wE; // Net work
COPc=qL/wnet; // COP of the cycle
disp (COPc,"COP of the cycle =","kJ/kg",qH,"Heat rejected =","kJ/kg",qL,"Refrigerating effect = ","kJ/kg",wE,"Work of expansion =","kJ/kg",wc,"Work of compression = ");
