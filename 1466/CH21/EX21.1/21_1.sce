


clc
//initialisation of variables
clear
a=1.5//ft^2
toh=40//ft
sp=60//rpm
//CALCULATIONS
v=a*1
thv=v*sp/60
li=550//gal/min
av=550/(60*6.24)
slip=(a-av)*100/a
cds=100-slip
thp=10*toh/60
//RESULTS
printf ('slip = %.f per cent',slip)
printf ('\n coefficient of discharge = %.f per cent',cds)
printf ('\n Total pressure head = %.f ft of water',toh)
printf ('\n Theoretical horse-power = %.2f ',thp)
