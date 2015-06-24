//CHAPTER 11- SINGLE PHASE INDUCTION MOTOR
//Examle 1

disp("CHAPTER 11");
disp("EXAMPLE 1");

//VARIABLE INITIALIZATION
P=6;                      //number of poles
f=50;                     //frequency in Hz
p_fd=160;                 //gross power absorbed by forward field in Watts
p_bd=20;                  //gross power absorbed by backward field in Watts
N_r=950;                  //rotor speed in rpm
loss=75;                  //no load frictional loss in Watts

//SOLUTION
P_g=p_fd-p_bd;            //air-gap power in Watts
N_s=(120*f)/P;            //synchronous speed in rpm
S=(N_s-N_r)/N_s;          //slip
P_m=P_g*(1-S);            //mechanical power developed in Watts
P_o=P_m-loss;             //output or shaft power in Watts
w=(2*%pi*N_r)/60;         
T=P_o/w;                  //shaft torque in Newton-meters
disp(sprintf("The shaft torque is %.3f N-m",T));

//END

