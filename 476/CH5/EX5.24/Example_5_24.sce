//A Textbook of Chemical Engineering Thermodynamics
//Chapter 5
//Some Applications of the Laws of Thermodynamics
//Example 24


clear;
clc;


//Given:
T1 = 300; //initial temperature (K)
P1 = 100; //initial pressure (kPa)
T3 = 1200; //max temperature (K)
P3 = 500; //max pressure (kPa)
Cp = 1.005; //(kJ/kg K)
Cv = 0.718; //(kJ/kg K)

//To determine pressure and temperature work and thermal efficiency
gama = Cp/Cv;

//(a)
P4 = P1;
P2 = P3;
//Isentropic compression 1-2
T2 = T1*((P2/P1)^((gama-1)/gama));
mprintf('(a)');
mprintf('\n At the end of first process');
mprintf('\n Temperature = %f K',T2);
mprintf('\n Pressure = %f kPa',P2);

//Process 2-3
mprintf('\n\n At the end of second process');
mprintf('\n Temperature = %f K',T3);
mprintf('\n Pressure = %f kPa',P3);

//Isentropic expansion 3-4
T4 = T3/((P3/P4)^((gama-1)/gama));
mprintf('\n\n At the end of third process');
mprintf('\n Temperature = %f K',T4);
mprintf('\n Pressure = %f kPa',P4);

//(b)
W_comp = Cp*(T2-T1); //work required by compressor
mprintf('\n\n (b)');
mprintf('\n Work required by compressor is %f kJ/kg',W_comp);

//(c)
W_turb = Cp*(T3-T4); //work done by turbine
mprintf('\n\n (c)');
mprintf('\n Work done by turbine is %f kJ/kg',W_turb);

//(d)
eff = 1-(P1/P2)^((gama-1)/gama);
mprintf('\n\n (d)');
mprintf('\n Thermal efficiency is %f',eff);

//end