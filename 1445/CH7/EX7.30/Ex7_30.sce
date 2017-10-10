//CHAPTER 7- SINGLE PHASE TRANSFORMER
//Example 30

clc;
disp("CHAPTER 7");
disp("EXAMPLE 30");

//6600/440 V single phase transformer
//VARIABLE INITIALIZATION 
v1=6600;                                //primary voltage in Volts
v2=440;                                 //secondary voltage in Volts
e_r=0.02;                               //equivalent resistance
e_x=0.05;                               //equivalent reactance
pf=0.8;                                 //power factor
//
//SOLUTION  
//worked out differently a bit from the text book in terms of the steps
phi=acos(pf);                           //phase angle
reg=e_r*cos(phi)+e_x*sin(phi);          //voltage regulation
V2=v2*(1-reg);                          //secondary terminal voltage
disp(sprintf("The secondary terminal voltage is %.2f V",V2));
disp(" "); 
// 
//END
