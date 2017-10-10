//CHAPTER 7- SINGLE PHASE TRANSFORMER
//Example 20

clc;
disp("CHAPTER 7");
disp("EXAMPLE 20");

//4 kVA 200/400 V 50 hz single phase transformer
//VARIABLE INITIALIZATION
va=4000;                            //apparent power
v1=200;                             //primary voltage in Volts
v2=400;                             //secondary voltage in Volts
f=50;
R_e1=0.15;
Pi=60;                              //core losses iron core
pf1=0.9;                            //power factor of primary
pf2=0.8;                            //power factor of secondary

//SOLUTION  
//Copper loss on full load
R_e2=(v2/v1)^2*R_e1;
I1=va/v1;
I2=va/v2;
Pcu=I2^2*R_e2;                      //cu losses
disp("SOLUTION (i)");
disp(sprintf("The value of Copper Losses at full load is %.0f W",Pcu)); 
//
//efficiency
Pout=va*pf1;
Pin=Pout+Pi+Pcu;
eff=Pout*100/Pin;
disp("SOLUTION (ii)");
disp(sprintf("The percent efficiency at full load %f PF is %.2f",pf1,eff)); 
//
//
//efficiency at half load
Pout=va*pf2/2;
Pin=Pout+Pi+Pcu*(1/2)^2;
eff=Pout*100/Pin;
disp("SOLUTION (ii)");
disp(sprintf("The percent efficiency at half load %f PF is %.2f",pf2,eff)); 
  
disp(" "); 
// 
//END
