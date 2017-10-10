//Example_a_10_14 page no:475
clc;
turn=700;
mu_o=4*%pi*10^-7;
mu_r=600;
phi_g=1.8*10^-3;
Ag=4*4&10^-4;
Bg=(1.8*10^-3)/(16*10^-4);
Ig=0.001;
Hg=Bg/mu_o;
mmf_gap=Hg*Ig;
phi_c=1.8*10^-3;
Ac=4*4*10^-4;
Bc=1.125;
Ic=0.24;
Is=0.6;
Hc=Bc/(mu_o*mu_r);
mmf_central_limb=Hc*Ic;
phi_s=(1/2)*phi_g;
Bs=phi_s/(16*10^-4);
Hs=Bs/(mu_o*mu_r);
//calculating the mmf
mmf_side_limb=Hs*Is;
mmf_t=mmf_gap+mmf_central_limb+mmf_side_limb;
current_required=mmf_t/turn;
disp(current_required,"the required current is (in A)");
