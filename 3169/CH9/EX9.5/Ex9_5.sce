//developed in windows XP operating system
//platform Scilab 5.4.1
clc;clear all;
//example 9.5
//calculation of dielectric constant and tandelta of the transformer oil

//given data
f=1*10^3//frequency(in Hz)
C1=504//capacitance(in pF) for standard condenser and leads
D1=0.0003//dissipation factor for standard condenser and leads
C2=525//capacitance(in pF) for standard condenser in parallel with the empty test cell
D2=0.00031//dissipation factor for standard condenser in parallel with the empty test cell
C3=550//capacitance(in pF) for standard condenser in parallel with the test cell and oil
D3=0.00075//dissipation factor for standard condenser in parallel with the test cell and oil

//calculation
Ctc=C2-C1//capacitance of the test cell
Ctcoil=C3-C1//capacitance of the test cell + oil
epsilonr=Ctcoil/Ctc//dielectric constant of oil
deltaDoil=D3-D2//deltaD of oil

printf('The dielectric constant is %3.2f',epsilonr)
printf('\nThe value of tandelta of the transformer oil is %3.5f',deltaDoil)
