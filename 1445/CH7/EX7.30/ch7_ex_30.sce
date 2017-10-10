//CHAPTER 7- SINGLE PHASE TRANSFORMER
//Example 30

disp("CHAPTER 7");
disp("EXAMPLE 30");

//VARIABLE INITIALIZATION 
v1=6600;                                //primary voltage in Volts
v2=440;                                 //secondary voltage in Volts
e_r=0.02;                               //equivalent resistance
e_x=0.05;                               //equivalent reactance
pf=0.8;
//
//SOLUTION  
phi=acos(pf);
reg=e_r*cos(phi)+e_x*sin(phi);
V2=v2*(1-reg);
disp(sprintf("The secondary terminal voltage is %f V",V2));
disp(" "); 
// 
//END
