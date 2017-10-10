//Chapter 6 Example1//
clc
clear
//catchment area of reservoir=a,average rainfall=ar,percent of rainfall utilized=pu//
//average available water for electricity production=we//
a=50;// in km^2//
ar=150;// in cm/year //
pu=75;// in percent//
we=(a*10^6)*(ar/100)*(pu/100);// to convert in terms of 10^6//
printf("\n Total available water for electricity production = %.3f m^3\n",we);
//quantity available=qa//
qa=we/(365*24*60*60);
//power generated=p,efficiency of turbine=te,efficiency of generator=ge,load factor=lf,mean head=mh//
te=88;// in percent//
ge=93;// in percent//
lf=75;// in percent//
mh=40;
p=0.736*qa*1000*mh*(ge/100)*(te/100)/75;
printf("\n Total Power generated in kW = %.2f kW\n",p);
// installed capacity=ic//
ic=p/(lf/100);
printf("\n Installed capacity of the generators = %.2f kW\n",ic);
// the values given in the book are approximated to the nearest decimal//