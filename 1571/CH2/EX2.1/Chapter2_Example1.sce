clc
clear

//INPUT
li=1.23;//length of melting ice in mm
lf=18.56;//length of melting ice reading in pressure of 74.24cm of mercury in mm
l=10.75;//length of melting ice at which temperature to be calculated
mp=0;//melting point in deg.C
T=50;//temperature of melting ice at which length to be calculated in deg.C
//boiling point of water changes by 1 deg.C for change of pressure of 27mm of mercury

//CALCULATIONS
sp=100-(76-74.24)/(2.7);//76cm of mercury steam point is 100 deg.C so at 74.24cm of mercury the steam point in deg.C
t=(l-li)*(sp-mp)/(lf-li);//temperature at 10.75mm of melting ice in deg.C
lt=((T*(lf-li))/(sp-mp))+li;//length of ice at 50 deg.C

//OUTPUT
mprintf('the temperature of melting ice at 10.75mm of hg is %3.2f deg.C \n the length of ice corresponding to 50 deg.C is %3.2f mm',t,lt)
