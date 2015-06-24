//Example 7.5
//calculate (a) total (hemispherical) emissive power
//(b) total (hemispherical) emissivity
//Given
T=1500       //K, surface temprature
//from fig 7.7
e1=0.2     //emissivity ,when wavelength(l1) is 0<l1<2 micrometer
e2=0.6     //emissivity ,when wavelength(l2) is 2<l2<6 micrometer
e3=0.1     //emissivity ,when wavelength(l3) is 6<l3<10 micrometer
e4=0       //emissivity ,when wavelength(l4) is l4>10 micrometer
//from table 7.2
F1=0.2733        //fraction of energy in  wavelength (l1)
F2=0.89-F1       //fraction of energy in  wavelength (l2)
F3=0.9689-0.89   //fraction of energy in  wavelength (l3)
//Calculation
s=5.669*10^-8    //stephen's constant
Eb=s*T^4         //emissive power 
E=(e1*F1+e2*F2+e3*F3)*Eb
printf("total (hemispherical) emissive power is %f W/m^2\n",E)
//(b)
e=E/(s*T^4)
printf("total (hemispherical) emissivity of the surface is %f",e)
