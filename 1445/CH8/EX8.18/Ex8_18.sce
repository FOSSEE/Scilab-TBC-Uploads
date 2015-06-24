//CHAPTER 8- DIRECT CURRENT MACHINES
//Example 18

disp("CHAPTER 8");
disp("EXAMPLE 18");

//460 V 10 HP motor 
//VARIABLE INITIALIZATION
v_t=460;                     //in Volts
p_o=10*736;                  //in Watts (1 metric H.P=735.5 W)
ratio=85/100;                //as given in the question 
eff=84/100;                  // efficiency
I_f=1.1;                     //in Amperes
r_a=0.2;                     //in Ohms

//SOLUTION
p_i=p_o/eff;                //power input
I_l=p_i/v_t;                //line current
I_a=I_l-I_f;                // armature current
E1=v_t-(I_a*r_a);           //back emf
E2=E1*ratio;                 //E2:E1=N2:N1=ratio
v=v_t-E2;                    //voltage drop across r_a and r_s (r_s is the series resistance to be inserted)
r_s=(v/I_a)-r_a;            // series resistance
disp(sprintf("The resistance required is %.2f Ω",r_s));

//The answer is different because ratio equals 85/100 and not 75/100

//END

