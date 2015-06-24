//Chapter-5, Example 5.14, Page 189
//=============================================================================
clc
clear


//INPUT DATA
r=0.01;//Radius of the mettalic sphere in m
Ti=400;//Initial temperature in degree C
h1=10;//Heat transfer coefficient in W/m^2.K
Ta=20;//Temperature of air in degree C
Tc=355;//Central temperature in degree C
Tw=20;//Temperature of water bath in degree C
h2=6000;//Heat transfer coefficient in W/m^2.K
Tf=50;//Final temperature of the sphere in degree C
k=20;//Thermal conductivity in W/m.K
a=(6.66*10^-6);//Thermal diffusivity in m^2/h
c=1000;//Specific heat in J/kg/K
p=3000;//Density in kg/m^3

//CALCULATIONS
Bi1=(h1*r)/(3*k);//Biot number
t=((p*r*c*log((Ti-Ta)/(Tc-Ta)))/(3*h1));//Time required for cooling in air in s
Bi2=(h2*r)/(3*k);//Biot number
X=1/(3*Bi2);//X value for lumped capacity method
T=(Tf-Ta)/(Tc-Ta);//Temperature distribution
Fo=0.5;//Using Fig.5.13, on page no.190
t1=(Fo*r^2)/a;//Time required for cooling in water in s
Z=0.33;//Using Fig.5.14, on page no.191
Tr=Z*(Tf-Ta)+Ta;//Surface temperature at the end of cooling in degree C

//OUTPUT
mprintf('Time required for cooling in air is %3.0f s \nTime required for cooling in water is %3.1f s \nSurface temperature at the end of cooling is %3.0f degree C',t,t1,Tr)

//=================================END OF PROGRAM==============================
