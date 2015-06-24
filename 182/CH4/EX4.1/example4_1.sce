// To find the meter current and the voltmeter resistance
//example 4-1 in page 88
clc;

//given data
Vcc=20;//Vcc in volts
R=9.3e+3;// R=Rs+Rm=9.3 K-ohm
Im=1e-3'// Im=1 mA
hfe=100;
E=10;// E in volts
Vb=0.7;//voltage drop across base in volts

// calculation
Ve=E-Vb;// emitter voltage in volts
printf("meter current=%d mA\n",Ve*1000/R);
Ib=Im/hfe;// base current
printf("input resistance with transistor = %d M-ohm\n",E/(Ib*1000000));
printf("input resistance with out transistor = %.1f K-ohm\n",R/1000);
//result
//meter current = 1 mA
//input resistance with transistor = 1 M-ohm
//input resistance with out transistor = 9300 ohm