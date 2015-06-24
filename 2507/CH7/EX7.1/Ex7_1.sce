clc
clear
printf("Example 7.1 | Page Number 174 \n\n");
//Part(a) Find the work output of the engine
//Part(b) Find the magnitude of heat interaction with the reservoir at t2 and work input to the heat pump.

//Part(a)
printf("Part (a)\n");
//Given Data
Q1 = 500 //kJ //Heat transfer from reservoir at t1
Q2 = 187.5 //kJ //Heat transfer from reservoir at t2

//Solution
nr = 1-(Q2/Q1) //Efficiency
W = nr*Q1 //kJ //Work output of the engine
printf("Work output of the engine = %.1f kJ\n\n",W);

//Part(b)
printf("Part (b)\n");
//Given Data
Q1 = 500 //kJ //Heat transfer from reservoir at t1
//Solution
COP_hp = 1/nr
W = Q1/COP_hp //kJ //Work input to heat pump
Q2 = Q1-W //kJ //heat ineraction with reservoir at t2
printf("Heat ineraction with reservoir at t2 = %.1f kJ\n",Q2);
printf("Work input to the heat pump = %.1f kJ\n",W);
