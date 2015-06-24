//CHAPTER 8- DIRECT CURRENT MACHINES
//Example 23

disp("CHAPTER 8");
disp("EXAMPLE 23");

//230 V DC shunt motor
//VARIABLE INITIALIZATION
v=230;                         //in Volts
r_a=0.4;                       //in Ohms
r_f1=115;                      //in Ohms
I_a=20;                        //in Amperes
N1=800;                        //in rpm
N2=1000;                       //in rpm

//SOLUTION
//Eb1/Eb2 = phi1.N1/phi2.N2                          (eq 1)
//Eb=Vt - Ia.Ra                                      (eq 2)
//=> (Vt-Ia1.Ra)/(Vt-Ia2.Ra) = phi1.N1/phi2.N2       (eq 3) 
I_f1=v/r_f1;                    //redundant step
E_b1=v-(I_a*r_a);               // back emf
//Since terminal voltage Vt is constant, if dir prop phi dir prop 1/r_f
//=> phi1/phi2 = r_f2/r_f1           (eq 4)   [r_f2 = field resistance at 10000 rpm]
                                              //[r_f1 = field resistance at 800 rpm]
//Load torque is constant, so T dir prop phi.Ia
//=> phi1.Ia1=phi2.Ia2
//=> Ia2=(phi1/phi2). Ia1            (eq 5)
//putting the value of Ia2 in eq 3 and
//rearranging the equation, we get,
r_f2=((E_b1*N2)/((v*N1)-(N1*I_a*r_a)))*r_f1;  
r_f2_dash=r_f2-r_f1;
disp(sprintf("The external resistance is %.2f Ω",r_f2_dash));//text book answer is 29.93 ohm

//The answer is slightly different due to the precision of floating point numbers

//END
