//CHAPTER 8- DIRECT CURRENT MACHINES
//Example 30

disp("CHAPTER 8");
disp("EXAMPLE 30");

//VARIABLE INITIALIZATION
p=5*735.5;                 //in Watts (1 metric H.P.=735.5 W)
N=1000;                    //in rpm
I=30;                      //in Amperes
I_s=45;                    //starting current in Amperes

//SOLUTION
T=(p*60)/(2*%pi*1000);
T_s=(T*(I_s^2))/(I^2);
disp(sprintf("The starting torque is %f N-m",T_s));

//The answer is slightly different due to precision of floating point numbers

//END 
