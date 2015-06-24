//To determine the annual load factor on the substation
//Page 57
clc;
clear;

printf('Assuming a monthly load curve as shown in the figure attached to this code\n')

Nl=100; //100% percent load to be supplied
TAE=10^7; // Total annual energy in kW
APL=3500; //Annual peak load in kW
Pav= TAE/8760; //Annual average power demand
Fld= (Pav+Nl)/(APL+Nl); //Annual load factor
Cr=3;//Capacity cost
Er=0.03;//Energy cost
ACC=Nl*12*Cr; //Additional capacity cost per kWh
AEC=Nl*8760*Er; //Additional energy cost per kWh
TAC=ACC+AEC; //Total annual cost


printf('a) The new annual load factor on the substation is %g\n',Fld)
printf('b) The total annual additional costs to NL&NP to serve this load is $%g\n',TAC)
