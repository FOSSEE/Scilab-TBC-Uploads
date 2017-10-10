//CHAPTER 8- DIRECT CURRENT MACHINES
//Example 11

clc;
disp("CHAPTER 8");
disp("EXAMPLE 11");

//VARIABLE INITIALIZATION
p_o=20*1000;              //output in W
v_t=250;                  //in Volts
r_a=0.05;                 //aramture resistance in Ohms
r_se=0.025;               //series resistance in Ohms
r_sh=100;                 //shunt resistance in Ohms

//SOLUTION
I_t=p_o/v_t;
v_se=I_t*r_se;            //for series winding
v_sh=v_t+v_se;            //for shunt winding
I_sh=v_sh/r_sh;
I_a=I_sh+I_t;
E_a=v_t+(I_a*r_a)+v_se;
disp(sprintf("The total emf generated is %f V",E_a));

//END


