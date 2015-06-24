//CHAPTER 8- DIRECT CURRENT MACHINES
//Example 31

disp("CHAPTER 8");
disp("EXAMPLE 31");

//series motor 
//VARIABLE INITIALIZATION
r_a=0.1;                    //combined resistance of armature & field resistance in Ohms
v_t=230;                    //in Volts
I_a1=100;                   //in Amperes
N1=1000;                    //in rpm
I_a2=200;                   //in Amperes
ratio=1.2;                  //ratio of Φ2:Φ1=1.2

//SOLUTION
//Eb1 dir prop phi1.N1
//Eb1=Vt-Ia1.Ra
//=> (Vt-Ia1.Ra) dir prop ph1.N1
//and 
//=> (Vt-Ia2.Ra) dir prop ph1.N2
//=> (Vt-Ia1.Ra)/ (Vt-Ia1.Ra) = phi1.N1/phi2.N2
//given Phi2=1.2 Phi1 as flux is increased by 20%
E_b1=v_t-(I_a1*r_a);        //numerator of LHS according to the book
E_b2=v_t-(I_a2*r_a);        //denominator of LHS according to the book
N2=(E_b2/E_b1)*(1/ratio)*N1;
N2=round(N2);               //to round off the value
disp(sprintf("The new speed of the armature is %d rpm",N2));

//END




