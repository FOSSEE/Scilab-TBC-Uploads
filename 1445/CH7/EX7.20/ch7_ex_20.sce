//CHAPTER 7- SINGLE PHASE TRANSFORMER
//Example 20

disp("CHAPTER 7");
disp("EXAMPLE 20");

//VARIABLE INITIALIZATION
va=4000;                            //apparent power
v1=200;                             //primary voltage in Volts
v2=400;                             //secondary voltage in Volts
f=50;
R_e1=0.15;
Pi=60;                              //core losses iron core
pf1=0.9;
pf2=0.8;

//SOLUTION  
R_e2=(v2/v1)^2*R_e1;
I1=va/v1;
I2=va/v2;
Pcu=I2^2*R_e2;                      //cu losses
disp("SOLUTION (i)");
disp(sprintf("The value of Copper Losses at full load is %f W",Pcu)); 
//
Pout=va*pf1;
Pin=Pout+Pi+Pcu;
eff=Pout*100/Pin;
disp("SOLUTION (ii)");
disp(sprintf("The percent efficiency at full load %f PF is %f",pf1,eff)); 
//
//at half load
Pout=va*pf2/2;
Pin=Pout+Pi+Pcu*(1/2)^2;
eff=Pout*100/Pin;
disp("SOLUTION (ii)");
disp(sprintf("The percent efficiency at full load %f PF is %f",pf2,eff)); 
  
disp(" "); 
// 
//END
