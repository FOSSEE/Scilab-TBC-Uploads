//CHAPTER 8- DIRECT CURRENT MACHINES
//Example 15

disp("CHAPTER 8");
disp("EXAMPLE 15");

//VARIABLE INITIALIZATION
v_t=230;                    //in Volts
I_a1=3.33;                  //in Amperes
N1=1000;                    //in rpm
r_a=0.3;                    //armature resistance in Ohms
r_f=160;                    //field resistance in Ohms
I_l=40;                     //in Amperes
phi1=1;                     //in Wb (phi=1 is an assumption)
phi2=(1-(4/100));           //in Wb (phi2=0.96 of phi1)

//SOLUTION

//At no load
E_a1=v_t-(I_a1*r_a);
I_f=v_t/r_f;

//At full load
I_a2=I_l-I_f;
E_a2=v_t-(I_a2*r_a);
N2=(E_a2/E_a1)*(phi1/phi2)*N1;
N2=round(N2);               //to round off the value
disp(sprintf("The full load speed is %d rpm",N2));

//END
