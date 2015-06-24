//To find the voltage dip in per units for motor starting
//Page 333
clc;
clear;

Sts=(10+(11*4.4)); //Load Selected on the transformer
V=240; //Voltage
Sta=50; //Available Unit
pf=0.9; //Load Power Factor
I=(Sts/V)/(Sta/V);

VDT=I*((0.0107*pf)+(0.0139*sind(acosd(pf))));

SLload=10+(3*6);

deff('x=VD(a,b,c)','x=a*b*c/(10^4)') //Function to find Voltage Drop Per unit

VDSL=VD(0.0088,116.7,150);
VDSD=VD(0.01683,41.76,70);

TVD=VDT+VDSL+VDSD;

Is=80;
Smotor=Is*V/1000;
pf1=0.5;
VDIPT=((0.0107*pf1)+(0.0139*sind(acosd(pf1))))*(Smotor/Sta);

VDIPSL=VD(0.00636,80,150);
VDIPSD=VD(0.01089,80,70);
TVDIP=VDIPT+VDIPSL+VDIPSD;

VDSL1=VD(0.00769,116.7,150);
VDSD1=VD(0.0136,41.6,70);
TVD1=VDT+VDSL1+VDSD1;

printf('\na) The Voltage drops are:\n')
printf('Transformer is %g pu V\n',VDT)
printf('Secondary Lines is %g pu V\n',VDSL)
printf('Service Drops is %g pu V\n',VDSD)
printf('Total is %g pu V\n',TVD)
printf('The Above Value doesn''t meet the required criterion\n')
printf('\nb) The Voltage dip for motor starting are:\n')
printf('Transformer is %g pu V\n',VDIPT)
printf('Secondary Lines is %g pu V\n',VDIPSL)
printf('Service Drops is %g pu V\n',VDIPSD)
printf('Total is %g pu V\n',TVDIP)
printf('The Above Value does meet the required criterion\n')
printf('\nC) The Voltage drops after changing the conductors are:\n')
printf('Transformer is %g pu V\n',VDT)
printf('Secondary Lines is %g pu V\n',VDSL1)
printf('Service Drops is %g pu V\n',VDSD1)
printf('Total is %g pu V\n',TVD1)
printf('The Above Value doesn''t meet the required criterion\n')
printf('Thus 350 kcmilcable size for the secondary lines and #2/0 AWG cable size for service drops to meet the criteria\n')
