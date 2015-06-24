clc
NE=1*10^17
disp("NE = "+string(NE)+" /cm^3") //initializiation the value of doping concentration of emitter in the NPN transistor. 
NB=10^15
disp("NB = "+string(NB)+" /cm^3") //initializiation the value of doping concentration of base in the NPN transistor. 
WE=0.6*10^-4
disp("WE = "+string(WE)+" cm") //initializiation the value of one of parametre of the transistor.
WB=0.8*10^-4
disp("WB = "+string(WB)+" cm") //initializiation the value of one of parametre of the transistor.
no=1.5*10^10
disp("no = "+string(no)+"cm^-3") //initializing the value of intrinsic carrier concentration.
e=1.6*10^-19
disp("e = "+string(e)+" columns") //initializiation the value of electronic charge 
DE=15
disp("DE = "+string(DE)+" cm^2/s") //initializiation the value of one of parametere of the transistor.
DB=20
disp("DB = "+string(DB)+" cm^2/s") //initializiation the value of one of parametere of the transistor.
tE=0.2*10^-6
disp("tE = "+string(tE)+" s") //initializiation the value of one of parametere of the transistor.
tB=0.1*10^-6
disp("tB = "+string(tB)+" s") //initializiation the value of one of parametere of the transistor.
Vbe=0.60
disp("Vbe = "+string(Vbe)+" V") //initializiation the value of base emitter voltage .
VT=0.0259
disp("VT = "+string(VT)+" V") //initializiation the value of threshold voltage.
Jro=2*10^-8
disp("Jro = "+string(Jro)+" A/cm^2") //initializiation the value of recombination current density.
LE=(sqrt(DE*tE))
disp("LE=(sqrt(DE*tE)))="+string(LE)+" cm")//calculation
LB=(sqrt(DB*tB))
disp("LB=(sqrt(DB*tB)))="+string(LB)+" cm")//calculation
pEO=(no^2/NE)
disp("Number of Majority holes in the emitter,pEO=(no^2/NE) )="+string(pEO)+" /cm^3")//calculation
nBO=(no^2/NB)
disp("Number of Majority holes in the base,nBO=(no^2/NB))="+string(nBO)+" /cm^3")//calculation
Y=(1+(((NB*DE*LB)/(NE*DB*LE))*((tanh(WB/LB)/tanh(WE/LE)))))^(-1)
disp("Emitter injection efficiency,Y=(1+((NB*DE*LB)/(NE*DB*LE)*(tanh(WB/LB)/tanh(WE/LE)))) )="+string(Y))//calculation
Bt=(cosh(WB/LB))^-1
disp("Base transport factor,Bt=(cosh(WB/LB))^-1)="+string(Bt))//calculation
Jo=((e*DB*nBO)/(LB*tanh(WB/LB)))
disp("Reverse saturation current Density,Jro=((e*DB*nBO)/(LB*tanh(WB/LB))))="+string(Jo)+"A/cm^2")//calculation
delta=(1+((Jro/Jo)*(exp((-Vbe)/(2*VT)))))^-1
disp("delta(recombination factor)=(1+((Jro/Jo)*(exp((-Vbe)/(2*VT)))))^-1)="+string(delta)+" A")//calculation
a=Bt*delta*Y
disp("common base current amplification factor,(alpha=Bt*delta*Y)="+string(a))//calculation
B=(a/(1-a))
disp("common emitter current amplification factor,Beta=(a/(1-a)))="+string(B))//calculation
//the value of NE provided in the question is different than used in the solution .
//I have used the value (while solving) provided in the question (i.e NE=10^17/cm^3). 



















