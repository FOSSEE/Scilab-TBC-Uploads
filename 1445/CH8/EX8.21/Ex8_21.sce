//CHAPTER 8- DIRECT CURRENT MACHINES
//Example 21

disp("CHAPTER 8");
disp("EXAMPLE 21");

//10kW 6 pole DC generator
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
//pole pitch is defined as the periphery of armature divided by the number of poles or the area of armature between two adjacent poles
//area of armature = 2.pi. dia of armature. length of armature
area=2*%pi*(dia/2)*l;         //area of armature
phi=B*area;                   //flux density over one pitch pole= flux per pole/area of armature between poles
disp(sprintf("(a) The flux per pole is %.4f Wb",phi));

//solution (b)
Z=(60*E_g)/(phi*N);         // no of conductors in the armature
                            //induced emf = phi.Z.N.P/60.A
                            //            = phi.Z.N/60 ( as A=P)                                  
disp(sprintf("(b) The total number of active conductors is %d",Z));

//solution (c)
I_a=50;                     // armature current
p=E_g*I_a;                  //power developed
w=(2*%pi*N)/60;             //speed in RPS
T=p/w;                      //Torque
disp(sprintf("(c) The torque developed when armature current is 50 A is %.2f N-m",T));

//END
 
