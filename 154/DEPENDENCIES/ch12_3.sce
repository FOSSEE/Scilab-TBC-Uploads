clc
disp("Example 12.3")
printf("\n")

printf("Given")
disp("The system CBA is WYE connected")
disp("Effective line voltage is 120V")
disp("The three impedances are 20(-30 deg)")
Zmag=20;Zph=-30;
//Let maximum line voltage is Vmax
Vmax=120*sqrt(2)
//Let the line to neutral voltage magnitude be Vn
Vn=Vmax/sqrt(3)
//From fig 12.7(b)
//VAN=Vn(-90 deg)
//VBN=Vn(30 deg)
//VCN=Vn(150 deg)

//From figure 12.10
IAmag=Vn/Zmag
IAph=-90-Zph
printf("\nIA=%3.2f(%d deg)A\n",IAmag,IAph);

IBmag=Vn/Zmag
IBph=30-Zph
printf("\nIB=%3.2f(%d deg)A\n",IBmag,IBph);

ICmag=Vn/Zmag
ICph=150-Zph
printf("\nIC=%3.2f(%d deg)A\n",ICmag,ICph);

