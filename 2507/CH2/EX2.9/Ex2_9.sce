clc
clear
printf("Example 2.9 | Page number 46 \n\n");
//(a) Compute the torque in the driving shaft and shaft power output of the motor.
//(b) Compute the net work for battery and motor.

//Given Data
d = 0.4 //m //cylinder diameter
t = 10 //min //Time taken for stirring
L = 0.49 //m //distance moved by the piston
p_atm = 1 //bar //atmospheric pressure
W_net = -1965 //Nm //net work done
n = 750 //rev/min //rotational velocity of electric motor
I = 0.9 //A //current
V = 24 //V //voltage

//Solution
//Part(a)
printf("Part (a)\n");
W_d = 10^5*p_atm * (%pi/4) * d^2 * L; //Nm //work done by fluid on piston
printf("Work done by fluid on the piston = %.1f Nm\n",W_d);
W_str = W_net - W_d; //Nm //Work done by stirrer
printf("Work done by stirrer on the fluid = %.1f Nm\n",W_str);
P_shaft = abs(W_str)/(t*60); //W //shaft power output
printf("Shaft power output = %.2f W\n",P_shaft);
T = (P_shaft*60)/(2*%pi*n); //Nm //Torque in the driving shaft
printf("Torque in the driving shaft = %.3f Nm\n", T);

//Part(b)
printf("\nPart (b)\n");
W_bat = I*V*t*60; //Nm //work done by battery
printf("Work done by battery = %.1f Nm\n",W_bat);
W_motor = -1*(W_bat+W_str) //Nm //work done by motor
printf("Work done by motor = %.1f Nm",W_motor);
