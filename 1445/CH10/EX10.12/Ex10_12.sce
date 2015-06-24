//CHAPTER 10- THREE-PHASE INDUCTION MACHINES
//Example 12

disp("CHAPTER 10");
disp("EXAMPLE 12");

//VARIABLE INITIALIZATION
v=440;                           //line voltage in Volts
I=1200;                          //line current in Amperes
eff=0.85;                        //full load efficiency
pow_fact=0.8;                    //full load power factor

//SOLUTION

//solution (a)
I_fl1=I/5;                       //starting current at rated voltage is 5 times the rated full-load current
p1=sqrt(3)*v*I_fl1*pow_fact*eff; 
disp(sprintf("(a) The maximum permissible kW rating when the motor when it starts at full voltage is %.3f kW",p1/1000));

//solution (b)
x=0.8;                            //voltage is stepped down to 80% 
I_fl2=I/((x^2)*5); 
p2=sqrt(3)*v*I_fl2*pow_fact*eff;
disp(sprintf("(b) The maximum permissible kW rating when the motor is used with an auto-transformer is %.3f kW",p2/1000));

//solution (c)
I_fl3=I/((0.578^2)*5);            //since a star-delta is equivalent to an auto-transformer starter with 57.8% tapping 
p3=sqrt(3)*v*I_fl3*pow_fact*eff;
disp(sprintf("(c) The maximum permissible kW rating when the motor is used with star-delta starter is %.3f kW",p3/1000));

//The answers are slightly different due to precision of floating point numbers

//END











