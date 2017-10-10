//Calculate the Equilibrium constant for the reaction  Sn(s)+2Ag(one positive)(aq)=Sn(double positive)(aq)+2Ag(s).  And also predict whether the given reaction would occur spontaneously under standard-state condition

//Example 10.1

clc;

clear;

Ecathode=0.800;  //Standard Electrode Potential for Ag in V

Eanode=-0.138;  //Standard Electrode Potential for Sn in V

E=Ecathode-Eanode;  //Standard Electrode Potential for Electrochemical cell (positive quantity of E shows the reaction is spontaneous under standard-state condition)

F=96500;  //Faraday costant in C mol^-1

v=2;  //Stoichiometric coefficient (two electron are transferred in reaction)

R=8.314;  //Gas constant in J K^-1 mol^-1

T=25+273;  //Temperature in K

K=exp((v*E*F)/(R*T));  //Equilibrium constant 

printf("Equilibrium constant = %.1f*10^31",K*10^-31);

delrG=(-v*F*E)/1000;  //Gibbs Energy in kJ mol^-1 (large negative value of delrG indicate that the reaction is spontaneous under standard state condition)

printf("\n Spontaneity of the reactin = %.0f kJ mol^-1",delrG);

