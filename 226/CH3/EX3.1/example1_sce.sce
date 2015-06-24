//chapter 3
//example 3.1
//page 73
printf("\n")
printf("given")
Vf=.7;Rl=500;Vi=22;
Vpi=1.414*Vi;
disp("Vpi")
Vpo=Vpi-Vf;
printf(" peak vouput voltage is %3.2fV\n",Vpo)
Ip=Vpo/Rl;
printf("peak load current is %3.4fA\n",Ip)
PIV=Vpi;
printf("diode paek reverse voltage %3.2fV\n",PIV)