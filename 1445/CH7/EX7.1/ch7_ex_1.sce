//CHAPTER 7- SINGLE PHASE TRANSFORMER
//Example 1

disp("CHAPTER 7");
disp("EXAMPLE 1");

//VARIABLE INITIALIZATION
I_0=10;                        //no load current in Amperes
pf=0.25;                       //power factor
v1=400;                        //in Volts
f=50;                          //in Hertz

//SOLUTION

//solution (a)
theta=acos(pf);         
I_phi=I_0*sin(theta);         
disp(sprintf("(a) The magnetizing component of no load current is %f A",I_phi));

//solution (b)
p_c=v1*I_0*pf;
disp(sprintf("(b) The iron loss is %d W",p_c));

//solution (c)
N1=500;
phi_m=v1/(sqrt(2)*%pi*f*N1);
disp(sprintf("(c) The maximum value of flux in the core is %f mWb",phi_m*1000));

//END

