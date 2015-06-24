clc
clear 
printf("example 2.6 page number 73\n\n")
//to find the volume of air

volume_H2=0.5    //in m3
volume_CH4=0.35  //in m3
volume_CO=0.08   //in m3
volume_C2H4=0.02 //in m3
volume_oxygen=0.21  //in m3 in air

//required oxygen for various gases
H2=0.5*volume_H2;
CH4=2*volume_CH4;
CO=0.5*volume_CO;
C2H4=3*volume_C2H4;

total_O2=H2+CH4+CO+C2H4;
oxygen_required=total_O2/volume_oxygen;

printf("amount of oxygen required = %f cubic meter",oxygen_required)
