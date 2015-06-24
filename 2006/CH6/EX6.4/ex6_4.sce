clc;
//(a).Summer air conditioning (cooling)
TL=298; // Operating temperature in kelvin
TH=318; // Operating temperature in kelvin
q=0.75; // Heat Transfer from fabric of room per degree of temperature difference in kW
QL=q*(TH-TL); // Heat Transfer from fabric of room
COPc=TL/(TH-TL); // COP of Air conditioning unit
W=QL/COPc; // Work input of Air conditioning unit
disp ("kW",W,"Work input of Air conditioning unit = ","(a).Summer air conditioning (cooling)");
// (b).Winter air conditioning (recerse cycle heating)
TH=293; // Operating temperature in kelvin
TL=(-(-2*q*TH)-sqrt ((-2*q*TH)^2-(4*q*(q*TH^2-TH))))/(2*q);// Lowest outdoor Temperature by root
disp ("K",TL,"Lowest outdoor Temperature  = ","(b).Winter air conditioning (recerse cycle heating)");
