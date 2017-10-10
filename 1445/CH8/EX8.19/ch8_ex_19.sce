//CHAPTER 8- DIRECT CURRENT MACHINES
//Example 19

disp("CHAPTER 8");
disp("EXAMPLE 19");

//VARIABLE INITIALIZATION
v_t=250;                    //in Volts
r_a=0.5;                    //in Ohms
r_f=250;                    //in Ohms
N1=600;                     //in rpm
I=21;                       //in Amperes
r_s=250;                    //in Ohms

//SOLUTION
I_f1=v_t/r_f;
I_f2=v_t/(r_f+r_s);
I_a1=I-I_f1;
// T is directly proportional to (Φ*I_a)
// I_f is directly proportional to Φ
// => I_f1*I_a1=I_f2*I_a2, therefore,
I_a2=(I_f1*I_a1)/I_f2;      
E_b1=v_t-(I_a1*r_a);
E_b2=v_t-(I_a2*r_a);
// E_b is directly proportional to (Φ*N)
// (Φ*N) is directly proportinal to (I_f*N)
// =>E_b1:E_b2=(I_f1:I_f2)*(N1:N2)
N2=(I_f1/I_f2)*(E_b2/E_b1)*N1;
N2=round(N2);              //to round off the value 
disp(sprintf("The new speed of the motor is %d rpm",N2));

//END
