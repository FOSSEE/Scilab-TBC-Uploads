clc;funcprot(0);//EXAMPLE 3.5
// Initialisation of Variables
t1=1990;....................//Temperature of the heat source in K
t2=850;..................//Temperature of the sink in K
Q=32.5;...................//Heat supplied in kJ/min
P=0.4;....................//Power developed by the engine in kW
//Calculations
eta=1-(t2/t1);..........//Efficiency of carnot engine
etath=P/(Q/60);..................//Efficiency of the given engine
if (etath>eta) then printf("Since the efficiency of the given engine is more than efficiency of carnot engine, the claim is not true.")
end
