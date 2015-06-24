clc;

printf("Example 1.2\n");
// 1 kW= 103 W = 103 J/s = 10^3 * (1 kg*1 m^2)/1 s^3
//                       = (10^3 * (1/0.4536) lb x (1/0.3048)^2 ft^2)/1 s^3
lfs=(10^3*(1/0.4536)*(1/.3048)^2); //lfs->lb ft^2/s^3
printf("\n 1 kW = %.0f lb ft^2/s^3",lfs);
sfs=lfs/32.2; //sfs->slug ft^2/s^3
printf("\n 1 kW = %.0f slug ft^2/s^3",sfs);
printf("\n 1 kW = %.0f lbf ft/s",sfs);
hp=sfs/550;
printf("\n 1 kW = %.2f h.p.",hp);
printf("\n 1 h.p.= %.3f kW",1/hp)