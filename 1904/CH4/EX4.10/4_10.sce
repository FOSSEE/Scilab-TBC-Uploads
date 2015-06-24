//To find the substation spacing and load on transformers
//Page 217
clc;
clear;

D=500; //Load Density in kVA per sq.miles
Vl=12.47; //Line Voltage in kV
N=2; //Feeders per substation
//From Table A-5 Appendix A it Current Ampacity can be found

Imax=340;

S2=sqrt(3)*Vl*Imax; //Load Per Feeder

l2=sqrt(S2/D); //Length of the feeder
S=2*l2; //Substation Spacing
TS2=S2*N; //Total Load on substation

printf('\nThe Parts a,b and c of thhis question cannot be coded\n')
printf('d) The substation size and spacing is %g kVA and %g miles\n',TS2,S)


