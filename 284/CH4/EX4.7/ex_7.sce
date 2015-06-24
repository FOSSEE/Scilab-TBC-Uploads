// Chapter 4_Carrier Transport Phenomenon
//Caption_The Hall Effect
//Ex_7//page 158
L=10^-3    //LENGTH IN M
W=10^-2    //WIDTH IN CM
d=10^-5
Ix=10^-3   //current in Amp
Vx=12.5
e=1.6*(10^-19)
Bz=500    //magnetic field in gauss
Vh=-6.25*10^-3    //hall voltage

//A negative hall voltage for this geometry implies that we have an n-type semiconductor
BzT=Bz*10^-4   //magnetic field in tesla
n=-(Ix*BzT)/(e*d*Vh*10^6)
mun=(Ix*L)/(e*n*Vx*W*d)
printf('Majority carrier concentration is %1.1fd cm^-3 and mobility is %1.1fd cm^2/V-s ',n,mun)
