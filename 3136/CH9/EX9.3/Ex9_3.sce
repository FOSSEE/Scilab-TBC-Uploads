clear all; clc;

disp("The tangential velocity at the rotor mean radius is Um")
rm=1.5
N=3600
Um=rm*N*%pi/30
printf("Um=rm*N*pi/30= %0.1f",Um)

disp("From the velocity diagram in figure 8.11 for the impulse stages we have delta_h0")
disp("delta_h0=delta_Et=UmVu2-UmVu3/g_c=UmVu2/g_c=2((Um)^2)/gc")
Um=565.5
gc=32.2
delta_h0=2*((Um)^2)/gc
printf("\n delta_h0= %0.0f lbf-ft/lbm=25.5 Btu/lbm",delta_h0)

disp("From the Mollier diagram in appendix A, we have hoi=1565 Btu/lbm")
disp("For the stages with constant mean radi,we have hoi-hoe=n_s*delta_hoe or hoe=h0i-n_s*delta_hoe")
h_oe=1565-(12*25.5)
printf(" hoe= %0.0f Btu/lbm.",h_oe)

disp("Also from ETA_ad=(hoi-hoe)/(hoi-hsoe), we have hsoe=hoi-(hoi-hoe)/ETA_ad")
h_soe=1565-306/0.85
printf(" hsoe= %0.0f Btu/lbm",h_soe)

disp("From s_soe=Soi=1.69 Btu/(lbm-R),we have poe=50 psia and Toe=450 degrees Farenheit")
disp("Also from given efficiencies we have Ps=ETAv*ETAm*m*n_s*delta_ho")
Ps=0.92*0.90*7*12*19863/550
printf(" Ps=%0.0f hp",Ps)












