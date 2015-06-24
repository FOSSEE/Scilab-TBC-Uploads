clc;
QH=500; // Heat supplied in kJ
QL=200; // Heat rejected in kJ
TH=720; // Resorvior Temperature in kelvin
TL=360; // Resorvior Temperature in kelvin
W=260; // Work developed in kJ
e_max=1-TL/TH; // maximum efficiency
e_clamied=W/QH; // Efficiency clamied
if (e_clamied<e_max) then
    disp ("It obeys the second law of thermodynamics.The claim is true");
else 
    disp ("It violates the second law of thermodynamics.The claim is False");
end
