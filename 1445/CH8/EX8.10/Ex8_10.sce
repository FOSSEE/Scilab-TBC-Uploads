//CHAPTER 8- DIRECT CURRENT MACHINES
//Example 10

clc;
disp("CHAPTER 8");
disp("EXAMPLE 10");

//VARIABLE INITIALIZATION
P=6;                      //number of poles
I=80;                     //current per conductor in Amperes
Z=400;                    //tottal number of conductors
phi=0.020;                //flux per pole in Wb
N=1800;                   //in rpm

//SOLUTION

//soluion (a): for wave connected
disp("(a) For Wave connected");

//(i)
A=2;                       //A=number of parallel paths
I_a=I*A;
disp(sprintf("(i) The total current is %f A",I_a));

//(ii)
E_a=(phi*Z*N*P)/(60*A);
disp(sprintf("(ii) The emf is %f V",E_a));

//(iii)
p=E_a*I_a;                 
disp(sprintf("(iii) The power developed in armature is %f kW",p/1000));
w=(2*%pi*N)/60; 
T_e=p/w;
disp(sprintf("The electromagnetic torque is %f N-m",T_e));


//soluion (b): for lap connected
disp("(b) For Lap connected");

//(i)
A=P;                       
I_a=I*A;
disp(sprintf("(i) The total current is %f A",I_a));

//(ii)
E_a=(phi*Z*N*P)/(60*A);
disp(sprintf("(ii) The emf is %f V",E_a));

//(iii)
p=E_a*I_a;                 
disp(sprintf("(iii) The power developed in armature is %f kW",p/1000));
w=(2*%pi*N)/60;
T_e=p/w;
disp(sprintf("The electromagnetic torque is %f N-m",T_e));
 
//END
