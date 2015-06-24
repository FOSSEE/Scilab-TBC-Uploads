//Ex:32
clc;
clear;
close;
f=14;//frequency
A_o=-(21.45+20*log(f)/log(10));//effective area in db
y_str=-100;//flux density required to saturate the transponder in db
l_s=200;//free space losses in db
e_irp=y_str+A_o+l_s;//the earth station EIRP required for saturation in dbw
printf("the earth station EIRP required for saturation=%f dbW",e_irp);