// Example 9.5: (i) Gain of each stage
//             (ii) Overall voltage gain
//            (iii) Output resistance Ro'
clc, clear
gm=1 // in mili-mho
rd=40; // in kilo-ohms
// From Fig. 9.14(b)
RD1=40 // in kilo-ohms
RS1=2 // in kilo-ohms
RD2=10 // in kilo-ohms
RS3=5 // in kilo-ohms
mu=rd*gm; // Amplification factor

disp("Part (i)");
AV1=-mu*RD1/(rd+RD1+(1+mu)*RS1); // Voltage gain of first stage (CS amplifier with RS1)
AV2=-mu*RD2/(rd+RD2); // Voltage gain of second stage (CS amplifier stage)
AV3=mu*RS3/(rd+(1+mu)*RS3); // Voltage gain of third stage (CD amplifier stage)
disp(AV1,"Voltage gain of first stage (CS amplifier with RS1) =");
disp(AV2,"Voltage gain of second stage (CS amplifier stage) =");
disp(AV3,"Voltage gain of third stage (CD amplifier stage) =");

disp("Part (ii)");
AV=AV1*AV2*AV3; // Overall voltage gain
disp(AV,"Overall voltage gain =");

disp("Part (iii)");
// Last stage is a CD amplifier, therefore
Ro=rd/(1+mu); // in kilo-ohms
Ro_dash=Ro*RS3/(Ro+RS3); // in kilo-ohms
disp(Ro_dash,"Output resistance (kΩ) =");