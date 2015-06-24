// to find the output pulse width and capacitance for the given pulse width in figure 11-15
// example 11-5 in page 334
clc;
//data given
Vcc=10;//supply voltage in Volt
Vee=10;// supply voltage in volt
VB=1;// base voltage in volt
R=1e+3*[22 10];//resistances R1 in ohm and R2 in ohm
C=[100D-12 0.01D-6];//capacitance C1 in farad and C2 in farad
//calculation
Vop=Vcc-1;// positive output voltage in volt
Von=-(Vee-1);// negative output voltage in volt
PW=C(2)*R(2)*log((Vop-Von)/VB);//pulse width in seconds
printf("PULSE WIDTH=%d micro-sec\n",PW*10^6);
PW=6e-3;//to calculate C2 for PW=6 ms
C2=PW/(R(2)*log((Vop-Von)/VB));// capacitance in farad
printf("For pulse width of 6 ms,\nC2=%.1f micro-F",C2*10^6);
//result
//PULSE WIDTH=289 micro-sec
//For pulse width of 6 ms,
//C2=0.2 micro-F 