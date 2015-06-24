// example:-3.9,page no.-111.
// program to find ht eattenuation constant of coaxial line.
syms E H Vo Zo P a b B z pi Po Q Rs Plc alpha Pld Plc w eipsila;
//Zo=(eta/(2*pi))*log(b/a);
E=(Vo/(P*(log(b)-log(a))))*exp(-%i*B*z);   //B=beta.
H=(Vo/(2*pi*P*Zo))*exp(-%i*B*z);
H=conj(H)*P; // for defining E cross H*.
Po=(1/2)*integ(integ((E*H),P),Q);
Po=limit(Po,P,b)-limit(Po,P,a);
Po=limit(Po,Q,2*pi)-limit(Po,Q,0);
disp(Po,'power flowing on the lossless line = ')
H=(H*conj(H))/P;  // for defining |H|^2;
Plc=(Rs/2)*integ(integ(H,z),Q);
Plc=limit(Plc,P,b)+limit(Plc,P,a);
Plc=limit(Plc,z,1)-limit(Plc,z,0);
Plc=limit(Plc,Q,2*pi)-limit(Plc,Q,0);
disp(Plc,'conductor loss = ')
E=E*conj(E)*P;
Pld=((w*eipsila)/2)*integ(integ(integ(E,P),Q),z);
Pld=limit(Pld,P,b)-limit(Pld,P,a);
Pld=limit(Pld,z,1)-limit(Pld,z,0);
Pld=limit(Pld,Q,2*pi)-limit(Pld,Q,0);
disp(Pld,'dielectric loss = ')
alpha=(Pld+Plc)/(2*Po); // attenuation constant.
disp(alpha,'attenuation constant = ')