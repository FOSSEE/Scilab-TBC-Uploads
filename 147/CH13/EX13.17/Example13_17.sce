close();
clear;
clc;
//rated power 'P'
P = 10000; //VA
V1 = 2400; 
V2 = 240; 
//from open circuit test
Vo = 240; //V
Io = 0.8; //A
Po = 80; //W
//from short circuit test
Vs = 80; //V
Is = 5.1; //A
Ps = 220; //W
//converting all data into per unit values
I1 = P/V1;
I2 = P/V2;
//in per unit , open circuit data are
Vo = Vo/V2; //pu
Io = Io/I2; //pu
Po = Po/P; //pu
//in per unit, short circuit data are
Vs = Vs/V1; //pu
Is = Is/I1; //pu
Ps = Ps/P; //pu
//equivalent resistance 'Rs'
Rs = Ps/(Is^2); //pu
mprintf("Series equivalent resistance in per unit, Rs = %0.4f pu",Rs);