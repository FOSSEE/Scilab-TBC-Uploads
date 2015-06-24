//CHAPTER 3- THREE-PHASE A.C. CIRCUITS
//Example 3

disp("CHAPTER 3");
disp("EXAMPLE 3");

//VARIABLE INITIALIZATION
r_ph=30;                     //resistance of coils in Ohms
l=0.07;                      //inductance of coils in Henry
v_l=400;                     //line voltage in Volts
f=50;                        //frequency in Hertz

//SOLUTION

//solution (a)
x_ph=2*(%pi)*f*l;            //inductive reactance
z_ph=sqrt((r_ph^2)+(x_ph^2)); 
I_ph=v_l/z_ph;               //phase voltage = line voltage for delta connection
disp(sprintf("(a) The phase current is %.2f A",I_ph));

//solution (b)
I_l=sqrt(3)*I_ph;            //phase current = (line current)/sqrt(3) for delta connection
disp(sprintf("(b) The line current is %.2f A",I_l));

//solution (c)
pow_fact=r_ph/z_ph;
disp(sprintf("(c) The power factor is %.3f (lagging)",pow_fact));

//solution (d)
p=sqrt(3)*v_l*I_l*pow_fact;
disp(sprintf("(d) The power absorbed is %.0f W",p));

//Answer is different due to precision of floating point numbers

//END
