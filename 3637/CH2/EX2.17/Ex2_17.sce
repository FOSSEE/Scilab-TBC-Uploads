//problem 17 pagenumber 2.100
//given
R=100e3;//ohm
IB=1e-6;//A
Vt=25e-3;//volt
v0=0;//volt


//determine Vin
Vin=(v0*2.3*Vt)+(R*IB);format(6);
disp("Vin = "+string(Vin)+" V");
