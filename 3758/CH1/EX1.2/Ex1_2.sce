v=5; //volume of oil in cubic meter
w=40; //weight of oil in kilo newton
g=9.81; //acceleration due to gravity in meter per second square
h=9810; //specific weight of water in newton per cubic meter
s=(w*1000)/v; //specific weight of oil in newton per cubic meter
printf('specific weight of oil is %f N/m^3\n',s);
m=s/g; //mass density of oil in kilogram per cubic meter
printf('mass density of oil is %f Kg/m^3\n',m);
f=s/h; //specific gravity of oil
printf('specific gravity of oil is %f ',f);
