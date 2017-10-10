//CHAPTER 8- DIRECT CURRENT MACHINES
//Example 17

clc;
disp("CHAPTER 8");
disp("EXAMPLE 17");

//VARIABLE INITIALIZATION
v_t=200;                   //in Volts
I_l=22;                    //in Amperes
N1=1000;                   //in rpm
r_a=0.1;                   //in Ohms
r_f=100;                   //in Ohms
N2=800;                    //in rpm

//SOLUTION

//solution (i)
I_f=v_t/r_f;
I_a1=I_l-I_f;
E_a1=v_t-(I_a1*r_a);
//on rearranging the equation E_a2:E_a1=N2:N1, where E_a2=v_t-I_a1*(r_a+r_s) and E_a1=v_t-(I_a1*r_a), we get,
r_s1=((v_t - ((N2*E_a1)/N1))/I_a1)-r_a;
disp(sprintf("(i) When the load torque is independent of speed, the additional resistance is %f Ω",r_s1));

//solution (ii)
I_a2=(N2/N1)*I_a1;
//on rearranging the equation E_a2:E_a1=N2:N1, where E_a2=v_t-I_a2*(r_a+r_s) and E_a1=v_t-(I_a1*r_a), we get,
r_s2=((v_t - ((N2*E_a1)/N1))/I_a2)-r_a;
disp(sprintf("(ii)When the load torque is proportional to speed, the additional resistance is %f Ω",r_s2));

//solution (iii)
I_a2=(N2^2/N1^2)*I_a1; 
//on rearranging the equation E_a2:E_a1=N2:N1, where E_a2=v_t-I_a2*(r_a+r_s) and E_a1=v_t-(I_a1*r_a), we get,
r_s3=((v_t - ((N2*E_a1)/N1))/I_a2)-r_a;
disp(sprintf("(iii)When the load torque varies as the square of speed, the additional resistance is %f Ω",r_s3));

//solution (iv)
I_a2=(N2^3/N1^3)*I_a1;
//on rearranging the equation E_a2:E_a1=N2:N1, where E_a2=v_t-I_a2*(r_a+r_s) and E_a1=v_t-(I_a1*r_a), we get,
r_s4=((v_t - ((N2*E_a1)/N1))/I_a2)-r_a;
disp(sprintf("(iv)When the load torque varies as the cube of speed, the additional resistance is %f Ω",r_s4));

//END

