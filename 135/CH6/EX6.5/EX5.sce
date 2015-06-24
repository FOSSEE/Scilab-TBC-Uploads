// Example 6.5: AI, AVs, Ri, Ro'
clc, clear
hie=4e3; // in ohms
hfe=200;
// From Fig. 6.27(a)
Rs=5e3; // in ohms
R1=90e3; // in ohms
R2=10e3; // in ohms
RC=5e3; // in ohms
RE=1e3; // in ohms
// From Fig 6.27(b)
RB=R1*R2/(R1+R2); // in ohms
Ri=hie+(1+hfe)*RE; // in ohms
Ri_eff=RB*Ri/(RB+Ri); // in ohms
AI=-hfe*RB/(RB+Ri);
AVs=-hfe*RC*Ri_eff/(Ri*(Rs+Ri_eff));
Ro_dash=RC; // in ohms
Ri=Ri*1e-3; // in kilo-ohms
Ro_dash=Ro_dash*1e-3; // in kilo-ohms
disp(AI,"AI =");
disp(AVs,"AVs =");
disp(Ri,"Ri (kΩ) =");
disp(Ro_dash,"Ro'' (kΩ) =");