// Example 6.3: AI, Ri, AV, AVs, Ro, Ro'
clc, clear
hie=1e3; // in ohms
hfe=100;
hre=2e-4;
hoe=20e-6; // in amperes per volt
RC=5e3; // in ohms
Rs=1e3; // in ohms
// From Table 6.3
AI=-hfe/(1+hoe*RC);
Ri=hie+hre*AI*RC; // in ohms
AV=AI*RC/Ri;
AVs=AV*Ri/(Ri+Rs);
Yo=hoe-hfe*hre/(hie+Rs); // in ohms inverse
Ro=1/Yo; // in ohms
Ro_dash=Ro*RC/(Ro+RC); // in ohms
Ri=Ri*1e-3; // in kilo-ohms
Ro=Ro*1e-3; // in kilo-ohms
Ro_dash=Ro_dash*1e-3; // in kilo-ohms
disp(AI,"AI =");
disp(Ri,"Ri (kΩ) =");
disp(AV,"AV =");
disp(AVs,"AVs =");
disp(Ro,"Ro (kΩ) =");
disp(Ro_dash,"Ro'' (kΩ) =");