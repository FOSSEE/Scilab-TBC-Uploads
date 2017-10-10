clear
//
//
//

//Variable declaration 
delta=0.0045;    //relative difference
i0=0.115;      //acceptance angle(radians)
v=3*10^8;      //velocity of light(m/s)

//Calculations
NA=sin(i0);    //numerical aperture
n1=NA/sqrt(2*delta);     //core refractive index
vcore=v/n1;      //velocity of light in fibre core(m/s)

//Result
printf("\n velocity of light in fibre core is %0.3f *10^8 m/s",vcore/10^8)
