// to find the pulse amplitude,frequency,rise time and fall time of fig9-22
// example 9-3 in page 259
clc;
// Data given
Vpd=2; // voltage/division=2 V
Hpd=5D-6;// time/division=5 micro seconds per division
Vd=4;// number of vertical divisions
Hd=5.6// number of horizontal divisions
// calculation
printf("Pulse amplitude=%d V\n",Vd*Vpd);
printf("frequency=%.1f kHz\n",(1/(Hd*Hpd))/10^3);
printf("raise time=%.1f micro-s\nfall time=%d micro-s",0.5*Hpd*10^6,10^6*0.6*Hpd);
//result
//Pulse amplitude=8 V
//frequency=35.7 kHz
//raise time=2.5 micro-s
//fall time=3.0 micro-s 