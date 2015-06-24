//CHAPTER 7- SINGLE PHASE TRANSFORMER
//Example 35

disp("CHAPTER 7");
disp("EXAMPLE 35");

//single phase 50 hz, 200kVA, 11kVA/230 V
//open circuit and short circuit tests
//VARIABLE INITIALIZATION
va=200000;                              //apparent power
v1=11000;                               //primary voltage in Volts
v2=230;                                 //secondary voltage in Volts
Woc=1600;                               //watts also equals core losses
Wc=2600;                               //watts, also equals cu losses
f=50;
//no load parameters
//day cycle given
h1=8;                                   // hours
load1=160000;                           //load in watts
pf1=0.8;                                //power factor
h2=6;
load2=100000;
pf2=1;
h3=10;
load3=0;
pf3=0;
//SOLUTION  
//24 hr energy output
Pout=load1*h1*pf1+load2*h2*pf2+load3*h3*pf3;
Pc24=Woc*24;                            // 24 hours Pc loss
//cu loss= hours.(kva output/kva rated)^2.Full load Cu loss
Pcu24=h1*(load1/va)^2*Wc+h2*(load2/va)^2*Wc+h3*(load3/va)^2*Wc;
Pin=Pout+Pc24+Pcu24; 
eff=Pout*100/Pin;
//disp(sprintf("The value Pout is %f",Pout));
//disp(sprintf("The value Pc is %f",Pc24));
//disp(sprintf("The value Pcu is %f",Pcu24));
disp(sprintf("The percent efficiency at full load is %.2f",eff)); 
disp(" "); 
// 
//END
