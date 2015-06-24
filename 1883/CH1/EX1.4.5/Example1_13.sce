//chapter-1,Example1_4_5,pg 1-34

Dn_1=0.218                           //Diameter of nth ring

Dn_2=0.451                           //Diameter of (n+10)th ring

wavelength=5893*10^-8                          //wavelength of light 

R=90                               //Radius of curvature 

p=10

u=(4*p*wavelength*R)/(Dn_2^2-Dn_1^2)              //Refractive index of liquid 

printf('\nRefractive index of liquid is  u = %.3f',u)
