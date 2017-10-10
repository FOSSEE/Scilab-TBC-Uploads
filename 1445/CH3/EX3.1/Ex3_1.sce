//CHAPTER 3- THREE-PHASE A.C. CIRCUITS
//Example 1

clc;
disp("CHAPTER 3");
disp("EXAMPLE 1");

//VARIABLE INITIALIZATION
v_l=400;                         //line voltage in Volts
r=15;                            //resistance in Ohms
xc=10;                           //capacitive reactance in Ohms

//SOLUTION

//solution (i)
v_ph=v_l/sqrt(3);                //phase voltage=(line voltage)/sqrt(3) for star connection
disp(sprintf("(i) The phase voltage is %f V",v_ph));

//solution (ii)
z_ph=sqrt((r^2)+(xc^2));
I_l=v_ph/z_ph;                   //phase current = line current for star connection 
disp(sprintf("(ii) The line current is %f A",I_l));

//solution (iii)
disp(sprintf("(iii) The phase current is %f A",I_l));

//solution (iv)
pow_fact=r/z_ph;
disp(sprintf("(iv) The power factor of the circuit is %f (leading)",pow_fact));

//solution (v)
p=sqrt(3)*v_l*I_l*pow_fact;
disp(sprintf("(v) The total power absorbed is %f W",p));

//solution (vi)
va=sqrt(3)*v_l*I_l;
disp(sprintf("(vi) The apparent power is %f VA",va));
var=sqrt((va^2)-(p^2));
disp(sprintf("The reactive power is %f VAR",var));

//Answers (v) and (vi) are different due to precision of floating point numbers

//END




