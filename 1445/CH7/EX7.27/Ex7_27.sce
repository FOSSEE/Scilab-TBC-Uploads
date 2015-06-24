//CHAPTER 7- SINGLE PHASE TRANSFORMER
//Example 27

disp("CHAPTER 7");
disp("EXAMPLE 27");

//200kVA 1100/400 V delta star distribution transformer
//three phase
//VARIABLE INITIALIZATION
va=200000;                           //apparent power
v1=11000;                             //primary voltage in Volts
v2=400;                             //secondary voltage in Volts
f=50;                               // frequency
//open circuit test parameters
V3=400;
I3=9;
W3=1500;                            //load in watts HT side
//short circuit test parameters
Vsc=350;
Isc=20;
Wc=2100;                             //load in watts HT side 
//
pf=0.8;
//SOLUTION  
Voc=V3/sqrt(3);                     //per phase applied voltage in open circiut
Io=9;                               //per phase exciting current.= I3
Wi=W3/3;                            // per phase core loss in watts HT side
Pc=Wi;                              //core losses
//power factor Pc=V1.Io.cos phi0  //v1=Voc  
//open circuit test performed on LV side
phi0=acos(Wi/(Voc*Io));
Ic=Io*cos(phi0);                    //core loss current
Iphi=Io*sin(phi0);                  //magnetising current
Rc=Voc/Ic;                          //Core loss resistance
X=Voc/Iphi;                         //
disp("SOLUTION (a)");
disp(sprintf("The value of Ic is %.0f Amp",Ic));
disp(sprintf("The value of IΦ is %.2f Amp",Iphi));
disp(sprintf("The value of Rc is %.2f Ohm",Rc));
disp(sprintf("The value of X is %.2fΩ",X));
//
//core loss resistance referred to hv side
Rch=Rc*(v1/Voc)^2;
XphiH=X*(v1/Voc)^2;
disp(sprintf("The value of Rch is %.2f kΩ",Rch/1000));
disp(sprintf("The value of XΦh is %.2f KΩ",XphiH/1000));
//short circuit
//This test performed on HV side
//first find rated current
Isc=va/(3*v1);
Psc=Wc/3;                           //ohmic loss per phase
phisc=acos(Wc/(Vsc*Isc));
pf1=cos(phisc);
R_e1=Psc/Isc^2;
Z_e1=Vsc/Isc;
X_e1=sqrt(Z_e1^2-R_e1^2); 
disp(sprintf("The value of ohmic loss per phase is %.0f W",Psc));
disp(sprintf("The value of Re1 is %.2f Ohm",R_e1));
disp(sprintf("The value of Ze1 is %.2f Ohm",Z_e1));
disp(sprintf("The value of Xe1 is %.2fΩ",X_e1)); 
//
//efficiency at half load
pf=1;                                   //unity power factor
Pout=(va/3)*(1/2)*pf;
//core losses=Pc
//cuLosses ohmic loss =Psc
Pin=Pout+Pc+(1/2)^2*Psc;
eff=Pout*100/Pin;
disp(sprintf("The efficiency at half load is %.2f",eff)); 
 
disp(" "); 
// 
//END
