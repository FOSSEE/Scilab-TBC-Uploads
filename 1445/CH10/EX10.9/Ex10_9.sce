//CHAPTER 10- THREE-PHASE INDUCTION MACHINES
//Example 9

disp("CHAPTER 10");
disp("EXAMPLE 9");

//VARIABLE INITIALIZATION
p=150*1000;                      //in Watts
v=3000;                          //in Volts
f=50;                            //in Hertz
P=6;                             //number of poles
ratio=3.6;                       //ratio of stator turn to rotor turn
r2=0.1;                          //rotor resistance in Ohms
L=3.61/1000;                     //leakage inductance per phase in Henry

//SOLUTION

//solution (a)
X2=2*%pi*f*L;   
E1=v/sqrt(3);
E2=E1*(1/ratio);
z1=sqrt((r2^2)+(X2^2));
I2=E2/z1;                         //rotor current
I_s=I2/ratio;                     //stator current
N_s=(120*f)/P;
w=(2*%pi*N_s)/60;
T_s1=(3*E2^2*r2)/(w*z1^2);
disp(sprintf("(a) The starting current is %.1f A and torque is %.0f N-m",I_s,T_s1));

//solution (b)
I_s1=30;
I_r=ratio*I_s1;
r=sqrt(((E2/I_r)^2)-(X2^2));
r_ext=r-r2;
z2=sqrt((r_ext^2)+(X2^2));
T_s2=(3*E2^2*r)/(w*z2^2);
disp(sprintf("(b) The external resistance is %.2f Ω and torque is %.2f N-m",r_ext,T_s2));

//There answers are different due to precision of floating point numbers  

//END
