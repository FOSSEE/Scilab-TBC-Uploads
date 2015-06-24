//CHAPTER 3- THREE-PHASE A.C. CIRCUITS
//Example 6

disp("CHAPTER 3");
disp("EXAMPLE 6");

//VARIABLE INITIALIZATION
v_l=3300;                     //line voltage in Volts
p_out=1500*735.5;             //output power in Watts (1 metric horsepower= 735.498W)
eff=0.85;
pow_fact=0.81;

//SOLUTION

//solution (a)
p_in=p_out/eff;
disp(sprintf("(a) The motor input is %.2f kW",p_in/1000));

//solution (b)
I=p_in/(sqrt(3)*v_l*pow_fact);//phase current = line current for star connection
disp(sprintf("(b) The line and phase current of the alternator is %.2f A",I));

//solution (c)
I_l=I;
I_ph=I_l/sqrt(3);             //phase current = (line current)/sqrt(3) for delta connection
disp(sprintf("(c) The line current of the motor is %.2f A",I_l));
disp(sprintf("The phase current of the motor is %.2f A",I_ph));

//Answers may be different due to precision of floating point numbers

//END



