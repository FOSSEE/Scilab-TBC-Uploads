clear;
clc;

printf("\tExample 17.2b\n");

//Activation polarisation data
VH_H2=0;
VZn_Zn2=-0.763;
iZn=10^-7;
iH2=10^-10;
beta_Zn=0.09;
beta_H2=-0.08;

ic=10^[(VH_H2-VZn_Zn2-(beta_H2*log10(iH2))+(beta_Zn*log10(iZn)))/(beta_Zn-beta_H2)];

//Part ii
Vc=VH_H2+(beta_H2*log10(ic/iH2));
printf("\nii) Corrosion potential is %.3f V\n",Vc);

//End