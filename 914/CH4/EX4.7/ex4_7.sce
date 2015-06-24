clc;
warning("off");
printf("\n\n example4.7 - pg119");
// given
r=10^-3;  //[m] - radius
l=1;  //[m] - length
Q=10^-7;  //[m^3/s] - flow rate
deltap=-10^6;  //[N/m^2=Pa] - pressure difference
spg=1.1;
pwater=1000;  //[kg/m^3] - density of water at 4degC
pfluid=spg*pwater;
mu=(r*-(deltap)*(%pi*r^3))/((4*Q)*(2*l));
mupoise=mu*10;
mucentipoise=mupoise*100;
printf("\n\n mu=%fNsM^-2=%fpoise=%fcP",mu,mupoise,mucentipoise);



