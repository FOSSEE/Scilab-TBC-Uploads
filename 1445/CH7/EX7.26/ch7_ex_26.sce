//CHAPTER 7- SINGLE PHASE TRANSFORMER
//Example 26

disp("CHAPTER 7");
disp("EXAMPLE 26");

//VARIABLE INITIALIZATION
va=10000;                           //apparent power
v1=500;                             //primary voltage in Volts
v2=250;                             //secondary voltage in Volts
f=50;
//open circuit parameters
Voc=500;
Io=2;
Wi=100;                            // watts HT side
Woc=Wi;                             //just to keep symbology
//short circuit test
Vsc=25;
Isc=20;
Wc=90;                             // watts HT side 
//
pf=0.8;
//SOLUTION  
//open circuit
phi0=acos(Woc/(v1*Io));
Ic=Io*cos(phi0);
Iphi=Io*sin(phi0);
Rc=v1/Ic;
X=v1/Iphi;
disp("SOLUTION (a)");
disp(sprintf("The value of Ic is %f Amp",Ic));
disp(sprintf("The value of IΦ is %f Amp",Iphi));
disp(sprintf("The value of Rc is %f Ohm",Rc));
disp(sprintf("The value of X is %fΩ",X));
//
//short circuit
phisc=acos(Wc/(Vsc*Isc));
pf1=cos(phisc);
R_e1=Vsc*pf1/Isc;
Z_e1=Vsc/Isc;
X_e1=sqrt(Z_e1^2-R_e1^2); 
disp(sprintf("The value of Power factor is %f",pf1));
disp(sprintf("The value of Re1 is %f Ohm",R_e1));
disp(sprintf("The value of Ze1 is %f Ohm",Z_e1));
disp(sprintf("The value of Xe1 is %fΩ",X_e1)); 
//
I1=va/v1;
phi=acos(pf);
//R=ercosphi2+vx.sinphi2
//E2=V2+I2.R
%reg=(Isc*R_e1*pf+Isc*X_e1*sin(phi))*100/v1; 
disp("SOLUTION (c(i))");
disp(sprintf("The percent regulation at full load is %f",%reg));
//
//full load output at pf=0.8
Pout=va*pf;
ironLoss=Wi;
cuLoss=Wc;
loss=ironLoss+cuLoss;
Pin=Pout+loss;
eff=Pout*100/Pin;
disp("SOLUTION (c(ii))");
disp(sprintf("The percent efficiency at full load is %f",eff)); 
disp(" "); 
// 
//END
