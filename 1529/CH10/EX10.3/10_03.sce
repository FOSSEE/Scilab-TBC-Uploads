//Chapter 10, Problem 3, figure 10.9
clc;
S=10000;                //voltmeter sensitivity
V=100;                  //total voltage
fsd=200;                //full scale deflection
R1=250;                 //load 1 
R2=2e6;                 //load 2
Rv=S*fsd;               //resistance of voltmeter,
Iv=V/Rv;                //current flowing in voltmeter
P=V*Iv;                 //calculating power dissipated by voltmeter
Ir1=V/R1;               //calculating current in load 1
Ir2=V/R2;               ////calculating current in load 2
P1=V*Ir1;               //calculating Power dissipated in load 1
P2=V*Ir2;               ////calculating Power dissipated in load 2
printf("Power dissipated by voltmeter = %f mW\n\n\n",P*1000);
printf("(a) Power dissipated in load 250 ohm = %f W\n\n\n",P1);
printf("(b) Power dissipated in load 2 M.ohm = %f mW\n\n\n",P2*1000);
