//CHAPTER 3- THREE-PHASE A.C. CIRCUITS
//Example 3

disp("CHAPTER 3");
disp("EXAMPLE 3");

//VARIABLE INITIALIZATION
r_ph=30;                     //in Ohms
l=0.07;                      //inductance in Henry
v_l=400;                     //in Volts
v_ph=400;                    //since in delta connection line voltage=phase voltage
f=50;                        //in Hertz

//SOLUTION

//solution (a)
x_ph=2*(%pi)*f*l;            //inductive reactance
z_ph=sqrt((r_ph^2)+(x_ph^2)); 
I_ph=v_ph/z_ph;
disp(sprintf("(a) The phase current is %f A",I_ph));

//solution (b)
I_l=sqrt(3)*I_ph;
disp(sprintf("(b) The line current is %f A",I_l));

//solution (c)
pow_fact=r_ph/z_ph;
disp(sprintf("(c) The power factor is %f (lagging)",pow_fact));

//solution (d)
p=sqrt(3)*v_l*I_l*pow_fact;
disp(sprintf("(d) The power absorbed is %f W",p));

//Answer is different due to precision of floating point numbers

//END
