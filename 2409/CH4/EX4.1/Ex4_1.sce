
//Variable Declaration

El=50  //Elevation Angle(degrees)
h0=0.6 //Earth station altitude(km)
hr=3   //Rain height(km)
R01=10 //Point Rain Rate(mm/hr)
f=12   //frequency(GHz)
ah=0.0188
bh=1.217
av=0.0168
bv=1.2

//Calculation
Ls=(hr-h0)/sin(El*3.142/180) //Slant path length(km)
LG=Ls*cos(El*3.142/180)      //Horizontal projection(km)
r01=90/(90+4*LG)      //Reduction factor
L=Ls*r01              //Effective path length(km)
alphah=ah*R01**bh     //Specific Attenuation
AdBh=alphah*L         //Rain Attenuation for horizontal polarization
alphav=av*R01**bv       //Specific Attenuation
AdBv= alphav*L          //Rain Attenuation for vertical polarization

//Results
printf("Rain Attenuation for given conditions and horizontal polarization is %.2f dB",AdBh)

printf("Rain Attenuation for given conditions and vertical polarization is %.2f dB",AdBv)

