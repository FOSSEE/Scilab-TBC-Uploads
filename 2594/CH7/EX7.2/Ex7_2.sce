clc
NE=5*10^17
disp("NE = "+string(NE)+" /cm^3") //initializiation the value of doping concentration in the emitter .
NB=10^16
disp("NB = "+string(NB)+" /cm^3") //initializiation the value of doping concentration in the base.
NC=10^15
disp("NC = "+string(NC)+" /cm^3") //initializiation the value of doping concentration in the collector.
WB=0.8*10^-4
disp("WB = "+string(WB)+" cm") //initializiation the value of base width of NPN transistor.
no=1.5*10^10
disp("no = "+string(no)+"cm^-3") //initializing the intrinsic carrier concentration.
pEO=(no^2/NE)
disp("Number of Majority holes in the emitter,pEO=(no^2/NE) )="+string(pEO)+" /cm^3")//calculation
nBO=(no^2/NB)
disp("Number of Majority holes in the base,nBO=(no^2/NB))="+string(nBO)+" /cm^3")//calculation
pCO=(no^2/NC)
disp("Number of Majority holes in the collector,pCO=(no^2/NC))="+string(pCO)+" /cm^3")//calculation
