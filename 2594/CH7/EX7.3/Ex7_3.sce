clc
NE=5*10^17
disp("NE = "+string(NE)+" /cm^3") //initializiation of doping concentration in the emitter. 
NB=10^16
disp("NB = "+string(NB)+" /cm^3") //initializiation of doping concentration in the base. 
NC=10^15
disp("NC = "+string(NC)+" /cm^3") //initializiation of doping concentration in the collector. 
WB=0.8*10^-4
disp("WB = "+string(WB)+" cm") //initializiation  the value of base width of NPN transistor.
no=1.5*10^10
disp("no = "+string(no)+"cm^-3") //initializing the value of  intrinsic carrier concentration.
VT=0.0259
disp("VT = "+string(VT)+" V") //initializiation the value of threshold voltage.
VJ=0.6258
disp("VJ=Vbe = "+string(VJ)+" V") //initializiation the value of base emitter voltage.
pEO=(no^2/NE)
disp("Number of Majority holes in the emitter,pEO=(no^2/NE) )="+string(pEO)+" /cm^3")//calculation
nBO=(no^2/NB)
disp("Number of Majority holes in the base,nBO=(no^2/NB))="+string(nBO)+" /cm^3")//calculation
pCO=(no^2/NC)
disp("Number of Majority holes in the collector,pCO=(no^2/NC))="+string(pCO)+" /cm^3")//calculation
pE=pEO*(exp(VJ/VT))
disp("pE(O)=pEO*(exp(VJ/VT)))="+string(pE)+" /cm^3")//calculation
nB=nBO*(exp(VJ/VT))
disp("nB=(nBO*(exp(VJ/VT))))="+string(nB)+" /cm^3")//calculation


//the answer provided in the book for pE,nB is some what different than actual calculated. 
