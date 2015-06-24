//CHAPTER 3- THREE-PHASE A.C. CIRCUITS
//Example 2

disp("CHAPTER 3");
disp("EXAMPLE 2");

//VARIABLE INITIALIZATION
v_l=400;                          //line voltage in Volts
I_l=30;                           //line current in Amperes
p=12*1000;                        //power absorbed in Watts

//SOLUTION
v_ph=v_l/sqrt(3);                 //phase voltage = (line voltage)/sqrt(3)
z_ph=v_ph/I_l;                    //phase current = line current for star connection   
pow_fact=p/(sqrt(3)*v_l*I_l);     //three-phase power = sqrt(3)*v_l*I_l*pow_fact
r_ph=z_ph*pow_fact;               //from impedance tringle
disp(sprintf("The resisatnce of each impedance is %.2f Ω",r_ph));
x_ph=sqrt((z_ph^2)-(r_ph^2));
disp(sprintf("The ractance of each impedance is %.2f Ω",x_ph));

//END



