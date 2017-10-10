//CHAPTER 8- DIRECT CURRENT MACHINES
//Example 21

clc;
disp("CHAPTER 8");
disp("EXAMPLE 21");

//VARIABLE INITIALIZATION
p_o=10*1000;                  //in Watts
P=6;                          //number of poles
E_g=200;                      //in Volts
N=1500;                       //in rpm
A=P;                          //since the armature is lap connected
B=0.9;                        //flux density in Tesla
l=0.25;                       //length of armature in m
dia=0.2;                      //diameter of armature in m

//SOLUTION

//solution (a)
area=2*%pi*(dia/2)*l;
phi=B*area;
disp(sprintf("(a) The flux per pole is %f Wb",phi));

//solution (b)
Z=(60*E_g)/(phi*N);
disp(sprintf("(b) The total number of active conductors is %d",Z));

//solution (c)
I_a=50;
p=E_g*I_a;
w=(2*%pi*N)/60;
T=p/w;
disp(sprintf("(c) The torque developed when armature current is 50 A is %f N-m",T));

//END
 
