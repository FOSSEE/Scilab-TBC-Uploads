//CHAPTER 7- SINGLE PHASE TRANSFORMER
//Example 28

disp("CHAPTER 7");
disp("EXAMPLE 28");

//10 kVA 2500/250 V single phase transformer
//open circuit and short circuit tests
//VARIABLE INITIALIZATION
va=10000;                             //apparent power
v1=2500;                              //primary voltage in Volts
v2=250;                               //secondary voltage in Volts
f=50;
//open circuit parameters
Voc=250;
Io=0.8;
Wi=50;                               // watts HT side
//short circuit test
Vsc=60;
Isc=3;
Wc=45;                             // watts HT side 
//
//loads
pf=0.8;
//SOLUTION 
//Open circuit test conducted on lv because 250 V during this test  is equal to rated voltage on lv side.  
I1=va/v1;                            //full rated current on hv side
Psc0=Wc*(I1/Isc)^2;                  //ohmic loss/ cu loss at full load rated current
Pc=Wi;                               // core losses
// 1/4 load
Psc=(1/4)^2*Psc0;
Pout=va*pf*(1/4);
Pin=Pout+Pc+Psc;
eff=Pout*100/Pin;
disp("SOLUTION (a)");
disp(sprintf("The efficiency at 1/4 load is %.2f",eff));
//
// 1/2 load
Psc=(1/2)^2*Psc0;
Pout=va*pf*(1/2);
Pin=Pout+Pc+Psc;
eff=Pout*100/Pin; 
disp(sprintf("The efficiency at 1/2 load is %.2f",eff));
//
// full load
Psc=(1/1)^2*Psc0;
Pout=va*pf*(1/1);
Pin=Pout+Pc+Psc;
eff=Pout*100/Pin;
disp(sprintf("The efficiency at full load is %.2f",eff));
//
// 1 1/4 = 5/4 load
Psc=(5/4)^2*Psc0;
Pout=va*pf*(5/4);
Pin=Pout+Pc+Psc;
eff=Pout*100/Pin;
disp(sprintf("The efficiency at 1 1/4 or 5/4 load is %.2f",eff));
//
//maximum efficiency at x, but then ohmic loss=core loss
x=sqrt(Pc/Psc0);
Pout=va*x*pf;
Pin=Pout+Pc+Pc;                             //Ohmic losses = core losses at max efficiency
eff=Pout*100/Pin;
disp("SOLUTION (b)");
disp(sprintf("The maximum efficiency  is %.2f",eff));
//
//short circuit test performed on lv side 
phisc=acos(Wc/(Vsc*Isc));
pf1=cos(phisc);
R_e1=Vsc*pf1/Isc;
Z_e1=Vsc/Isc;
X_e1=sqrt(Z_e1^2-R_e1^2);  
disp("SOLUTION (c)");
disp(sprintf("The value of Re1 is %.2f Ohm",R_e1));
disp(sprintf("The value of Ze1 is %.2f Ohm",Z_e1));
disp(sprintf("The value of Xe1 is %.2fΩ",X_e1)); 
//
//ee, ex;
er=I1*R_e1/v1;
ex=I1*X_e1/v1;
disp(sprintf("The value of Er is %.3f pu",er));
disp(sprintf("The value of Ex is %.3f",ex)); 
//
phi=acos(pf);
//R=ercosphi2+vx.sinphi2
//E2=V2+I2.R
%reg=(I1*R_e1*pf+I1*X_e1*sin(phi))*100/v1; //same as using er and ex
disp(sprintf("The percent regulation at full load lagging is %.2f",%reg));
%reg1=(I1*R_e1*pf-I1*X_e1*sin(phi))*100/v1; //same as using er and ex
disp(sprintf("The percent regulation at full load leading is %.2f",%reg1));
V21=(1-%reg/100)*v2;
V22=(1-%reg1/100)*v2;
disp(sprintf("The secondary terminal voltage at full load lagging is %.2f",V21));
disp(sprintf("The secondary terminal voltage at full load leading is %.2f",V22));
disp(" "); 
// 
//END
