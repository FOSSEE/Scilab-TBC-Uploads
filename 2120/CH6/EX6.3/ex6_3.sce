//Exa 6.3
clc;
clear;
close;
//Given data
heatEngineEffi= 32/100;// heat engine efficiency
COP= 5;// COP of heat pump
// heat engine efficiency = Wnet/Q1 = (Q1-Q2)/Q1
Q1byWnet= 1/heatEngineEffi;
Q2byWnet= (1-heatEngineEffi)*Q1byWnet;
// COP = Q4/Wnet = Q4/(Q4-Q3)
Q4byWnet= COP;
ratio= (Q2byWnet+Q4byWnet)/Q1byWnet;// ratio of heat transferred to the circulating water to heat trasferred to the engine
disp(ratio,"Ratio of heat trasferred to the circulating water to heat trasferred to the engine is : ")
