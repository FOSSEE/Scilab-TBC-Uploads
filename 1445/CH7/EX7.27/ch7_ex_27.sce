//CHAPTER 7- SINGLE PHASE TRANSFORMER
//Example 27

disp("CHAPTER 7");
disp("EXAMPLE 27");

//VARIABLE INITIALIZATION
va=200000;                           //apparent power
v1=11000;                             //primary voltage in Volts
v2=400;                             //secondary voltage in Volts
f=50;
//open circuit parameters
V3=400;
I3=9;
W3=1500;                            // watts HT side
//short circuit test
Vsc=350;
Isc=20;
Wc=2100;                             // watts HT side 
//
pf=0.8;
//SOLUTION  
Voc=V3/sqrt(3);
Io=9;
Wi=W3/3;                            // watts HT side
Pc=Wi;                              //core losses
//open circuit
phi0=acos(Wi/(Voc*Io));
Ic=Io*cos(phi0);
Iphi=Io*sin(phi0);
Rc=Voc/Ic;
X=Voc/Iphi;
disp("SOLUTION (a)");
disp(sprintf("The value of Ic is %f Amp",Ic));
disp(sprintf("The value of IΦ is %f Amp",Iphi));
disp(sprintf("The value of Rc is %f Ohm",Rc));
disp(sprintf("The value of X is %fΩ",X));
//
//core loss resistance referred to hv side
Rch=Rc*(v1/Voc)^2;
XphiH=X*(v1/Voc)^2;
disp(sprintf("The value of Rch is %f kΩ",Rch/1000));
disp(sprintf("The value of XΦh is %f KΩ",XphiH/1000));
//short circuit
//first find rated current
Isc=va/(3*v1);
Psc=Wc/3;                           //ohmic loss per phase
phisc=acos(Wc/(Vsc*Isc));
pf1=cos(phisc);
R_e1=Psc/Isc^2;
Z_e1=Vsc/Isc;
X_e1=sqrt(Z_e1^2-R_e1^2); 
disp(sprintf("The value of Power factor is %f",pf1));
disp(sprintf("The value of Re1 is %f Ohm",R_e1));
disp(sprintf("The value of Ze1 is %f Ohm",Z_e1));
disp(sprintf("The value of Xe1 is %fΩ",X_e1)); 
//
//efficiency at half load
pf=1;                                   //unity power factor
Pout=(va/3)*(1/2)*pf;
//core losses=Pc
//cuLosses ohmic loss =Psc
Pin=Pout+Pc+(1/2)^2*Psc;
eff=Pout*100/Pin;
disp(sprintf("The efficiency at half load is %f",eff)); 
 
disp(" "); 
// 
//END
