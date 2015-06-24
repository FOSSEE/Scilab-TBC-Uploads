
clc
clear
//Input data
U1=99.285;//Uranium consists of U-238 in percentage 
U2=0.715;//Uranium consists of U-235 in Percentage
E=0.025;//The energy of neutrons in eV
sc=2.72;//Capture cross section for U-238 in barns
sf=0;//fission cross section for U-238 in barns
sc1=101;//Capture cross section for U-235 in barns
sf1=579;//fission cross section for U-235 in barns

//Calculations
sa=(U1/100)*(sc+sf)+(U2/100)*(sc1+sf1);//The microscopic absorption cross section of natural uranium in barns

//Output
printf("The microscopic absorption cross section of natural uranium = %3.1f barns ',sa)
