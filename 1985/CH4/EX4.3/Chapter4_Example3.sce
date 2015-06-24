clc
clear
//Input data
ab=(15*10^-6)//Grating constant in m
w=(2.4*10^-6)//Wavelength in m
n=3//Order of diffraction

//Calculations
q=asind((n*w)/ab)//Angle at which third order is obtained
qx=(q-int(q))*60//For output
qy=(qx-int(qx))*60//For output

//Output
printf('Third order is obtained at %i degrees %3.0f minutes %3.2f seconds',q,qx,qy)
