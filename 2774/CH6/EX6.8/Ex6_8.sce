clc
clear
// solution
//initialization of variables

// for rankine cycle refer to fig 6.9

effiT=0.8 // turbine efficiency
P2=2*1000 // higher pressure converted in  kPa
P1=10 // lower pressure in kPa
h1=192 // enthalpy at 10 kPa  in kJ/kg
h3=3690 // enthalpy of superheated steam @ 2 MPa from steam table in kJ/kg
s3=7.702 //entropy of superheated steam @ 2 MPa from steam table in kJ/kg.K
// state 4' is repsresented by '41'
h2=h1 //isenthalpic process
s41=s3 // entropy is constant
sf=0.6491 // entropy of saturated liquid @10 kPa from steam table
sg=8.151 // entropy of saturated vapour @10 kPa from steam table
x=(s41-sf)/(sg-sf)// from property of pure substance

hf=191.8 //enthalpy of saturated liquid @10 kPa from steam table
hg=2584 // enthalpy of saturated vapour @10 kPa from steam table
h41=hf+x*(hg-hf)// enthalpy @ state 41

wa=effiT*(h3-h41)// turbine efficiency =(actual work)/(isentropic work)

qb=h3-h2 // heat supplied

effi=(wa)/qb // efficiency of power cycle
printf(" The Efficiency is %.3f or %.1f %% \n",effi,effi*100)

h4=h3-wa // adiabatic process

// now using interpolation for superheated steam @ 10 kPa
T4=(h4-2688)*(150-100)/(2783-2688)+100

printf("\n The Temperature from interpolation comes out to be %i degree celsius",T4)


