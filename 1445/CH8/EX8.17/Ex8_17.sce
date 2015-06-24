//CHAPTER 8- DIRECT CURRENT MACHINES
//Example 17

disp("CHAPTER 8");
disp("EXAMPLE 17");

//200 V DC shunt motor of 1000 rpm
//VARIABLE INITIALIZATION
v_t=200;                   //in Volts
I_l=22;                    //line current in Amperes
N1=1000;                   //in rpm
r_a=0.1;                   //armature resistancein Ohms
r_f=100;                   //field resistance in Ohms
N2=800;                    //new speed in rpm

//SOLUTION

//solution (i)
//load torque is independent of speed, the torque is constant at both speeds
//T dir prop phi1.Ia1 dir prop phi2.Ia2
//Therefore we get
//phi1.Ia1=phi2.Ia2 (since phi1=phi2)
// or Ia1=Ia2
I_f=v_t/r_f;                // field current
I_a1=I_l-I_f;               // armature current
E_a1=v_t-(I_a1*r_a);        // counter emf
//on rearranging the equation E_a2:E_a1=N2:N1, where E_a2=v_t-I_a1*(r_a+r_s) and E_a1=v_t-(I_a1*r_a), we get,
r_s1=((v_t - ((N2*E_a1)/N1))/I_a1)-r_a;
disp(sprintf("(i) When the load torque is independent of speed, the additional resistance is %.2f Ω",r_s1));

//solution (ii)
//Load torque Tl is proportional to N
//But electromagnetic torque Te=k.phi.Ia
//therefore, 
//k.phi1.Ia1 dir prop N1
//k.phi2.Ia2 dir prop n2
//hence we get (as phi1=phi2)
I_a2=(N2/N1)*I_a1;
//on rearranging the equation E_a2:E_a1=N2:N1, where E_a2=v_t-I_a2*(r_a+r_s) and E_a1=v_t-(I_a1*r_a), we get,
r_s2=((v_t - ((N2*E_a1)/N1))/I_a2)-r_a;
disp(sprintf("(ii)When the load torque is proportional to speed, the additional resistance is %.1f Ω",r_s2));

//solution (iii)
//The load Torque Tl dir prop N^2 dir prop phi.Ia
I_a2=(N2^2/N1^2)*I_a1; 
//on rearranging the equation E_a2:E_a1=N2:N1, where E_a2=v_t-I_a2*(r_a+r_s) and E_a1=v_t-(I_a1*r_a), we get,
r_s3=((v_t - ((N2*E_a1)/N1))/I_a2)-r_a;
disp(sprintf("(iii)When the load torque varies as the square of speed, the additional resistance is %.2f Ω",r_s3));

//solution (iv)
//The load Torque Tl dir prop N^3 dir prop phi.Ia
I_a2=(N2^3/N1^3)*I_a1;
//on rearranging the equation E_a2:E_a1=N2:N1, where E_a2=v_t-I_a2*(r_a+r_s) and E_a1=v_t-(I_a1*r_a), we get,
r_s4=((v_t - ((N2*E_a1)/N1))/I_a2)-r_a;
disp(sprintf("(iv)When the load torque varies as the cube of speed, the additional resistance is %.2f Ω",r_s4));

//END

