clc
disp("Example 12.4")
printf("\n")

disp("Continued from Example 12.3")
Vmax=120*sqrt(2)
Zmag=20;Zph=-30;
//Let the line to neutral voltage magnitude be VLN
VLN=Vmax/sqrt(3)

//From figure 12.14
ILmag=VLN/Zmag
ILph=0-Zph
printf("\nIL=%3.2f(%d deg)\n",ILmag,ILph);

//From fig 12.7(b)
//VAN=Vn(-90 deg)
//VBN=Vn(30 deg)
//VCN=Vn(150 deg)
IAph=ILph-90
printf("\nIA=%3.2f(%d deg)A\n",ILmag,IAph);

IBph=ILph+30
printf("\nIB=%3.2f(%d deg)A\n",ILmag,IBph);

ICph=ILph+150
printf("\nIC=%3.2f(%d deg)A\n",ILmag,ICph);
