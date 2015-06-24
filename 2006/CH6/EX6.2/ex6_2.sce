clc;
QH=325; // Heat supplied in kJ
QL=125; // Heat rejected in kJ
TH=1000; // Resorvior Temperature in kelvin
TL=400; // Resorvior Temperature in kelvin
W=200; // Work developed in kJ
e_carnot=1-TL/TH; // maximum efficiency
e_clamied=W/QH; // Efficiency clamied
disp (e_carnot,"e_carnot =");
disp (e_clamied,"e_clamied =");
if (e_carnot==e_clamied) then
    disp ("The machine is reversible");
elseif (e_carnot>e_clamied)
    disp ("The machine is irreversible");
else
    disp ("Here e_clamied > e_carnot so the cyclic machine is impossible.")
end
disp ("It would be reversible if its thermal efficiency  is equal to Carnot efficiency, and irreversible if it is less than Carnot efficiency.")
