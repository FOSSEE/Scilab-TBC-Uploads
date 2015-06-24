// Example 6.4: AI', AVs, Ri,eff, Ro, Ro'
clc, clear
hie=2e3; // in ohms
hfe=50;
hre=2e-4;
hoe=20e-6; // in amperes per volt
// From Fig. 6.22(a)
Rs=2e3; // in ohms
R1=90e3; // in ohms
R2=10e3; // in ohms
RC=5e3; // in ohms
// From the Table 6.3
RB=R1*R2/(R1+R2); // in ohms
AI=-hfe/(1+hoe*RC);
Ri=hie+hre*AI*RC; // in ohms
Ri_eff=RB*Ri/(RB+Ri); // in ohms
AI_dash=AI*RB/(RB+Ri);
AVs=AI*RC*Ri_eff/(Ri*(Rs+Ri_eff));
Rs_eff=Rs*RB/(Rs+RB); // in ohms
Yo=hoe-hfe*hre/(hie+Rs_eff); // in ohms inverse
Ro=1/Yo; // in ohms
Ro_dash=Ro*RC/(Ro+RC); // in ohms
Ri_eff=Ri_eff*1e-3; // in kilo-ohms
Ro=Ro*1e-3; // in kilo-ohms
Ro_dash=Ro_dash*1e-3; // in kilo-ohms
disp(AI_dash,"AI'' =");
disp(AVs,"AVs =");
disp(Ri_eff,"Ri,eff (kΩ) =");
disp(Ro,"Ro (kΩ) =");
disp(Ro_dash,"Ro'' (kΩ) =");