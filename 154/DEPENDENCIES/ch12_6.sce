clc
disp("Example 12.6")
printf("\n")

printf("Given")
disp("The system CBA is WYE connected")
disp("Maximum line voltage is 150V")
disp("The three impedances are 6(0 deg),6(30 deg),5(45 deg)")
ZAmag=6;ZAph=0;
ZBmag=6;ZBph=30;
ZCmag=5;ZCph=45;
//Let maximum line voltage is Vmax
Vmax=150
//Let the line to neutral voltage magnitude be Vn
Vn=Vmax/sqrt(3)
//From fig 12.7(b)
//VAN=Vn(-90 deg)
//VBN=Vn(30 deg)
//VCN=Vn(150 deg)

//From figure 12.16
IAmag=Vn/ZAmag
IAph=-90-ZAph
printf("\nIA=%3.2f(%d deg)A\n",IAmag,IAph);

IBmag=Vn/ZBmag
IBph=30-ZBph
printf("\nIB=%3.2f(%d deg)A\n",IBmag,IBph);

ICmag=Vn/ZCmag
ICph=150-ZCph
printf("\nIC=%3.2f(%d deg)A\n",ICmag,ICph);

//Now to calculate IN
//IN=-(IA+IB+IC)
x=IAmag*cos((IAph*%pi)/180);
y=IAmag*sin((IAph*%pi)/180);
z=complex(x,y)

x1=ICmag*cos((ICph*%pi)/180);
y1=ICmag*sin((ICph*%pi)/180);
z1=complex(x1,y1)

x2=IBmag*cos((IBph*%pi)/180);
y2=IBmag*sin((IBph*%pi)/180);
z2=complex(x2,y2)

IN=-(z+z1+z2)

[R,Theta]=polar(IN)

printf("\nIN=%3.2f(%d deg)A\n",R,Theta*(180/%pi));
