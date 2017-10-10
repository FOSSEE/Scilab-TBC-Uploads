//CHAPTER 3- THREE-PHASE A.C. CIRCUITS
//Example 2

disp("CHAPTER 3");
disp("EXAMPLE 2");

//VARIABLE INITIALIZATION
v_l=400;                          //in Volts
I_l=30;                           //in Amperes
I_ph=30;                          //since in star connection line current=phase current
p=12*1000;                        //in Watts

//SOLUTION
v_ph=v_l/sqrt(3);
z_ph=v_ph/I_ph;
pow_fact=p/(sqrt(3)*v_l*I_l);     //p=sqrt(3)*v_l*I_l*pow_fact
r_ph=z_ph*pow_fact;               //from impedance tringle
disp(sprintf("The resisatnce of each impedance is %f Ω",r_ph));
x_ph=sqrt((z_ph^2)-(r_ph^2));
disp(sprintf("The ractance of each impedance is %f Ω",x_ph));

//END



