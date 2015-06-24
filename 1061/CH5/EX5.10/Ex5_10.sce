//Ex:5.10
clc;
clear;
close;
yo=1320;// zero dispersion wavelength in nm
y=1290;// dispersion wavelength in nm
so=0.092;// dispersion slop
dt=(y*so/4)*(1-(yo/y)^4);// toal first order dispersion at 1290 nm in ps/nm/km
yo1=1310;// zero dispersion wavelength in um
y1=1550;// dispersion wavelength in nm
so=0.092;// dispersion slop
dt1=(y1*so/4)*(1-(yo1/y1)^4);// toal first order dispersion at 1550 nm in ps/nm/km
DM=13.5;// profile dispersion in ps/nm/km
DP=0.4;// profile dispersion in ps/nm/km
DW=dt1-(DM+DP);// wavelength dispersion in ps/nm/km
printf("The toal first order dispersion at 1290 nm =%f ps/nm/km", dt);
printf("\n The toal first order dispersion at 1550 nm =%f ps/nm/km", dt1);
printf("\n The wavelength dispersion at 1550 nm =%f ps/nm/km", DW);