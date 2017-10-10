//CHAPTER 11- SINGLE PHASE INDUCTION MOTOR
//Examle 1

disp("CHAPTER 11");
disp("EXAMPLE 1");

//VARIABLE INITIALIZATION
P=6;                      //number of poles
f=50;                     //frequency in Hz
pow_fd=160;               //gross power absorbed by forward field in W
pow_bd=20;                //gross power absorbed by backward field in W
N_r=950;                  //rotor speed in rpm
loss=75;                  //no load frictional loss in W

//SOLUTION
P_g=pow_fd-pow_bd;        //air-gap power
N_s=(120*f)/P;            //synchronous speed
S=(N_s-N_r)/N_s;          //slip
P_m=P_g*(1-S);            //mechanical power
P_o=P_m-loss;             //output or shaft power
w=(2*%pi*N_r)/60;
T=P_o/w;                 
disp(sprintf("The shaft torque is %f N-m",T));

//END

