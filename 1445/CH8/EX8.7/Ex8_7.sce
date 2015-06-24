//CHAPTER 8- DIRECT CURRENT MACHINES
//Example 7

disp("CHAPTER 8");
disp("EXAMPLE 7");

//Contnuation of the Example 6
//shaft load/ load torque remains fixed, and field flux is reduced to 80% by using field rheostat
//VARIABLE INITIALIZATION
p_o=20*746;                  //output power from H.P. to Watts (1 H.P.=745.699 or 746 W) 
v_t=230;                     //in Volts
N1=1150;                     //speed in rpm
P=4;                         //number of poles
Z=882;                       //number of armature conductors
r_a=0.188;                   //armature resistance in Ohms
I_a1=73;                     //armature current in Amperes
I_f=1.6;                     //field current in Amperes
ratio=0.8;                   //phi2:phi1=0.8  (here phi=flux)

//SOLUTION
//Eb2/Eb1= phi2.W2/phi1.W1 = phi2.N2/phi1.N1
E_b1=v_t-(I_a1*r_a);         //
I_a2=I_a1/ratio;             //(phi2*I_a2)=(phi1*I_a1)
E_b2=v_t-(I_a2*r_a);
N2=(E_b2/E_b1)*(1/ratio)*N1; //N2:N1=(E_b2/E_b1)*(phi1/phi2)
N2=round(N2);                //to round off the value of N2 (before rounding off N2=1414.695516 rpm)
disp(sprintf("The new operating speed is %d rpm",N2));

//The answer is slightly different due to the precision of floating point numbers

//END



