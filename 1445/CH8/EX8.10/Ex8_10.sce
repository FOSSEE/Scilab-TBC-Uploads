//CHAPTER 8- DIRECT CURRENT MACHINES
//Example 10

disp("CHAPTER 8");
disp("EXAMPLE 10");

//6 pole DC machine with 400 conductors
//VARIABLE INITIALIZATION
P=6;                      //number of poles
I=80;                     //current per conductor in Amperes
Z=400;                    //total number of conductors
phi=0.020;                //flux per pole in Wb
N=1800;                   //in rpm

//SOLUTION

//soluion (a): for wave connected
disp("(a) For Wave connected");

//(i)
A=2;                       //A=number of parallel paths =2 for wave connected conductors
I_a=I*A;
disp(sprintf("(i) The total current is %.0f A",I_a));

//(ii)
E_a=(phi*Z*N*P)/(60*A);
disp(sprintf("(ii) The emf is %.0f V",E_a));

//(iii)
p=E_a*I_a;                 
disp(sprintf("(iii) The power developed in armature is %.3f kW",p/1000));
w=(2*%pi*N)/60; 
T_e=p/w;
disp(sprintf("The electromagnetic torque is %.2f N-m",T_e));


//soluion (b): for lap connected
disp("(b) For Lap connected");

//(i)
A=P;                       //P=6 is given
I_a=I*A;
disp(sprintf("(i) The total current is %.0f A",I_a));

//(ii)
E_a=(phi*Z*N*P)/(60*A);   // induced emf
disp(sprintf("(ii) The emf is %.0f V",E_a));

//(iii)
p=E_a*I_a;               //power developed in armature  
disp(sprintf("(iii) The power developed in armature is %.1f kW",p/1000));
w=(2*%pi*N)/60;         //armature rotation in RPS
T_e=p/w;                //Torque
disp(sprintf("The electromagnetic torque is %.2f N-m",T_e));
 
//END
