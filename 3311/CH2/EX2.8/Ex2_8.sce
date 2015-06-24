// chapter 2
// example 2.8
// Fig. E2.8
// Calculate the resistance, gate power dissipation and maximum triggering frequency
// page-32-33
clear;
clc;
// given
Ig_min=500; // in mA (minimum gate current)
gradient=16; // in V/A
Egs=15; // in V (gate source voltage)
T_on=4; // in us (minimum turn on time)
Pg_av=0.3; // in W (average gate power dissipation)
// calculate
Ig_min=Ig_min*1E-3; // changing unit from mA to A
Vg=gradient*Ig_min; // calculation of gate voltage
Rs=(Egs-Vg)/Ig_min; // calculation of resistance
printf("\nThe resistance to be connected in series with SCR gate is \tRs= %.f ohm",Rs);
Pg=Vg*Ig_min; // calculation of power dissipation
printf("\n\nThe gate power dissipation is \t\t\t\t\tPg= %.f W",Pg);
// Since Pg=Pg_av/(f*T_on), therefore 
T_on=T_on*1E-6; // changing unit from us to sec
f=Pg_av/(Pg*T_on); // calculation of maximum triggering frequency
f=f*1E-3; // changing unit from Hz to khz
printf("\n\nThe maximum triggering frequency is \tf= %.2f kHz \t or \tF= %.f kHz",f,f);