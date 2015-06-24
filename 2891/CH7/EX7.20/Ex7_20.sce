//Exa 7.20
clc;
clear;
close;
// given :
eta_0=377 //intrinsic impedance in ohm
disp("when Zd=73+%i*42.5")
Zd=73+%i*42.5 // dipole impedance
// formula : zs*zd=(eta_0)^2/4
Zs=eta_0^2/(4*Zd) // slot impedance in ohm
disp(Zs,"complementary slot impedance in ohm:")

disp("when Zd=67+%i*0")
Zd=67+%i*0 // dipole impedance
// formula : zs*zd=(eta_0)^2/4
Zs=eta_0^2/(4*Zd) // slot impedance in ohm
disp(Zs,"complementary slot impedance in ohm:")

disp("when Zd=710+%i*0")
Zd=710+%i*0 // dipole impedance
// formula : zs*zd=(eta_0)^2/4
Zs=eta_0^2/(4*Zd) // slot impedance in ohm
disp(Zs,"complementary slot impedance in ohm:")


disp("when Zd=500+%i*0")
Zd=500+%i*0 // dipole impedance
// formula : zs*zd=(eta_0)^2/4
Zs=eta_0^2/(4*Zd) // slot impedance in ohm
disp(Zs,"complementary slot impedance in ohm:")


disp("when Zd=50+%i*20")
Zd=50+%i*20 // dipole impedance
// formula : zs*zd=(eta_0)^2/4
Zs=eta_0^2/(4*Zd) // slot impedance in ohm
disp(Zs,"complementary slot impedance in ohm:")


disp("when Zd=50-%i*25")
Zd=50-%i*25 // dipole impedance
// formula : zs*zd=(eta_0)^2/4
Zs=eta_0^2/(4*Zd) // slot impedance in ohm
disp(Zs,"complementary slot impedance in ohm:")


disp("when Zd=300+%i*0")
Zd=300+%i*0 // dipole impedance
// formula : zs*zd=(eta_0)^2/4
Zs=eta_0^2/(4*Zd) // slot impedance in ohm
disp(Zs,"complementary slot impedance in ohm:")
