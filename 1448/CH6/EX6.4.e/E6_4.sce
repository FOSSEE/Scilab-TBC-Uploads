clc
//Initialization of variables
C=4 //mg/L
MO2=32 //g/mol
Mw=18
w=1 //L
K=3.3*10^7 //torr
patm=0.21*760 //torr
//calculations
nO2=C/MO2
nH2O=w*10^3 /Mw
xO2=nO2/(nO2+nH2O)
pO2=xO2*K
if(pO2>patm)
    disp('The required concentration can be maintained under normal conditions')
else
    disp('The required concentration cannot be maintained under normal conditions')
end

