//CHAPTER 8- DIRECT CURRENT MACHINES
//Example 1

disp("CHAPTER 8");
disp("EXAMPLE 1");

//shunt generator
//VARIABLE INITIALIZATION
v_t=250;           //terminal voltage in Volts
I_l=500;           //load current in Amperes
r_a=0.04;          //armature resistance in Ohms
r_f=50;            //shunt field resistance in Ohms

//SOLUTION
I_f=v_t/r_f;        // current through the shunt field winding
I_a=I_l+I_f;        //Armature Current
E_a=v_t+(I_a*r_a); //E_a=emf of generator
disp(sprintf("The generated emf is %.1f V",E_a));

//END



