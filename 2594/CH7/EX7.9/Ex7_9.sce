clc
NB=5*10^16
disp("NB = "+string(NB)+" /cm^3") //initializiation the doping concentration in the base.
NC=2*10^15
disp("NC = "+string(NC)+" /cm^3") //initializiation the doping concentration in the collector.
WBm=0.6*10^-4
disp("WBm = "+string(WBm)+" cm") //initializiation the value of actual base width.
e=1.6*10^-19
disp("e = "+string(e)+" columns") //initializiation the value of electronic charge.
VCB1=1
disp("VCB1 = "+string(VCB1)+" V") //initializiation the initial value of collector base voltage .
VCB2=4
disp("VCB2 = "+string(VCB2)+" V") //initializiation the final value of collector base voltage.
Er=11.9
disp("Er = "+string(Er)) //initializing value of relative dielectric permittivity constant .
Eo=8.854*10^-14
disp("Eo = "+string(Eo)+" F/cm") //initializing value of permittivity of free space.
no=1.5*10^10
disp("no = "+string(no)+"cm^-3") //initializing  the value of intrinsic charge carriers
VT=0.0259
disp("VT = "+string(VT)+" V") //initializiation the value of threshold voltage.
VBI=VT*(log((NB*NC)/no^2))
disp(" VBI=VT*(log((NB*NC)/no^2))="+string(VBI)+" V")//calculation
WBS1=((2*Eo*Er*(VBI+VCB1)/e)*(NC/NB)*(1/(NC+NB)))^(1/2)
disp("WBS=((2*Eo*Er*(VBI+VCB1)/e)*(NC/NB)*(1/(NC+NB)))^(1/2))="+string(WBS1)+" cm")//calculation
Wb1=WBm-WBS1
disp("Neutral base width for VCB1,WB(neutral)=WBm-WBS1="+string(Wb1)+" cm")//calculation
WBS2=((2*Eo*Er*(VBI+VCB2)/e)*(NC/NB)*(1/(NC+NB)))^(1/2)
disp("WBS=((2*Eo*Er*(VBI+VCB2)/e)*(NC/NB)*(1/(NC+NB)))^(1/2))="+string(WBS2)+" cm")//calculation
Wb2=WBm-WBS2
disp("Neutral base width for VCB2,WB(neutral)=WBm-WBS2="+string(Wb2)+" cm")//calculation
deltaWbneutral=Wb1-Wb2
disp("change in the neutal base width ,deltaWb(neutral)=Wb1-Wb2="+string(deltaWbneutral)+" cm")//calculation
