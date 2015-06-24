//CHAPTER 8- DIRECT CURRENT MACHINES
//Example 9

disp("CHAPTER 8");
disp("EXAMPLE 9");

//4 Pole 230 V lap wound shunt motor with 600 conductors. RPM 1800
//VARIABLE INITIALIZATION
P=4;                      //number of poles
v_t=230;                  //in Volts
I_l=52;                   //in Amperes
Z=600;                    //tottal number of conductors
r_f=115;                  //in Ohms
d=30/100;                 //airgap diameter from cm to m
l=20/100;                 //effective length of pole
B=4100/10000;             //flux density from Gauss to Wb/m^2

//SOLUTION

I_f=v_t/r_f;              //I_f is same as I_sh 
I_a=I_l-I_f;              // armature current
ar=(%pi*d*l)/P;           //area of pole
phi=ar*B;                 //phi = flux
A=P;                      //for lap winding
T=(phi*Z*I_a)/(2*%pi*A);  //Torque developed
disp(sprintf("The torque developed in the motor is %.4f N-m",T));

//The answer is different as 'A' has not been included in the denominator(in the book)

//END
 
