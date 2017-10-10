//CHAPTER 10- THREE-PHASE INDUCTION MACHINES
//Example 12

disp("CHAPTER 10");
disp("EXAMPLE 12");

//VARIABLE INITIALIZATION
v=440;                           //in Volts
I=1200;                          //in Amperes
eff=0.85;                        //full load efficiency
pow_fact=0.8;                    //full load power factor

//SOLUTION

//solution (a)
I_fl1=I/5;                       //starting current at rated voltage is 5 times the rated full-load current
p1=sqrt(3)*v*I_fl1*pow_fact*eff;
disp(sprintf("(a) The maximum rating when the motor starts at full voltage is %f kW",p1/1000));

//solution (b)
I_fl2=I/((0.8^2)*5); 
p2=sqrt(3)*v*I_fl2*pow_fact*eff;
disp(sprintf("(b) The maximum rating when the motor is used with an auto-transformer is %f kW",p2/1000));

//solution (c)
I_fl3=I/((0.578^2)*5);   
p3=sqrt(3)*v*I_fl3*pow_fact*eff;
disp(sprintf("(c) The maximum rating when the motor is used with star-delta starter  is %f kW",p3/1000));

//The answers are slightly different due to precision of floating point numbers

//END











