clc
clear
disp('example 14.18')
za=1.5;zb=2.5;//impedence between two lines 
v=11  //plant operatio\ng voltage
l=20 ; pf=0.8 ;//load at 20 MW at 0.8 pf
i=l*10^3/(v*pf*sqrt(3));ph=-acosd(pf) //current and phase angle of transfrming current
vd=complex(za,zb)*complex(i*cosd(ph),i*sind(ph))  //voltage drop due to loss
printf("the current transfer is %.1fA at an angle %.2f",i,ph)
printf("\nvoltage drop in the interconnector is %.2f+j%.2fV \n so voltage boost needed is %.2f+j%.2fV ",real(vd),imag(vd),real(vd),imag(vd))
