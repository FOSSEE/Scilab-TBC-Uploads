//CHAPTER 3- THREE-PHASE A.C. CIRCUITS
//Example 12

clc;
disp("CHAPTER 3");
disp("EXAMPLE 12");

//VARIABLE INITIALIZATION
v_l=400;                     //in Volts
f=50;                        //in Hertz
w1=2000;                     //in Watts
w2=800;                      //in Watts

//SOLUTION
//solution (a)
p1=w1+w2;
p2=w1-w2;
phi=atan((sqrt(3)*p2)/p1);   //this equation comes from two-wattmeter method
pow_fact=cos(phi);           
disp(sprintf("(a) The power factor of the circuit is %f (leading)",pow_fact));

//solution (b)
I_l=p1/(sqrt(3)*v_l*pow_fact);
disp(sprintf("(b) The line current is %f A",I_l));

//solution (c)
v_ph=v_l/sqrt(3);
z_ph=v_ph/I_l;               //phase current = line current for delta connection
r_ph=z_ph*pow_fact;
disp(sprintf("(c) The resistance of each phase is %f Ω",r_ph));
xc=sqrt((z_ph^2)-(r_ph^2)); 
c=1/(2*%pi*f*xc);
disp(sprintf("The capacitance of each phase is %E F",c));

//END     
