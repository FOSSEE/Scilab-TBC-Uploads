//Ex:27
clc;
clear;
close;
r_b=62;//bit rate in db bits/s
r_bu=71-62;//uplink bit rate increase
p_up=2.4+r_bu;//Earth station transmitted power in dbW
printf("The earth station transmitted power =%f dbw",p_up);