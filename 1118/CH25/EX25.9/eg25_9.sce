clear;
//clc();

tar_kwh=1.43;
flat_tar=1.83;
fixed=400;
units=fixed/(flat_tar-tar_kwh);
printf("the number of units for which the tariff is econimical is:%.0f",units);

