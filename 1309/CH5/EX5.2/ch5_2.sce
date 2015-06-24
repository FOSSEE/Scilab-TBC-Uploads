clc;
clear;
printf("\t\t\tChapter5_example2\n\n\n");
// properties of Freon-12 from appendix table C3
T1_Fr=-50;
T2_Fr=-40;
rou1_Fr=1.546*1000;
rou2_Fr=1.518*1000;
beta_Fr=-(rou1_Fr-rou2_Fr)/(rou1_Fr*(T1_Fr-T2_Fr));
printf("\nThe volumetric thermal expansion coefficient calculated for Freon-12 is %.3e /K",beta_Fr);
beta_acc_Fr=2.63e-3; // the accurate value of volumetric thermal expansion coefficient for Freon-12
error_Fr=(beta_acc_Fr-beta_Fr)*100/beta_acc_Fr;
printf("\nThe error introduced in the case of Freon-12 is %d percent",error_Fr);
// properties of helium from appendix table D3
T1_He=366;
T2_He=477;
rou1_He=0.13280;
rou2_He=0.10204;
beta_He=-(rou1_He-rou2_He)/(rou1_He*(T1_He-T2_He));
printf("\nThe volumetric thermal expansion coefficient calculated for Freon-12 is %.3e /K",beta_He);
