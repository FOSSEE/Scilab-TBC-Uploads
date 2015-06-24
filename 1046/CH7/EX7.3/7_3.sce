//Example 7.3
//calculate (a)the fraction of solar radiation falls in visible range
//(b) the fraction occurs on the left of  visible range
//(c) the fraction ooccurs on right on visible range
//(d)wavelength and frequency of maximum spectral emissive power
//(e)the maximum spectral emissive power
//(f)the hemispherical total emissive power
//Given
Ts=5780              //K, surface temp.
//CAlculation
//(a)
lamda1=0.4         //micrometer, starting visible spectrum range 
lamda2=0.7         //micrometer,ending visible spectrum range
E1=lamda1*Ts       //micrometer K, 
E2=lamda2*Ts       //micrometer K, 
//from table 7.2
//fraction of radiation lying between 0 and lamda1
F1=0.1229
//fraction of radiation lying between 0 and lamda2
F2=0.4889
//the fraction of radiation falls betweem lamda1 & lamda 2
F3=F2-F1
printf("the fraction of radiation falls in visible range is %f \n",F3)
//(b)
F4=F1
printf("the fraction of radiation on the left of visible range is %f \n",F4)
//(c)
F5=1-F2
printf("the fraction in right of visible range is %f \n",F5)
//(d)
//from wein's displacement law
lmax=2898/Ts
printf("The maximum wavelength is %f micrometer is",lmax)
c=2.998*10^8      //m/s, speed of light
mu=c/lmax
printf("The frequency is %f s^-1\n",mu)
//(e)
//from eq. 7.4
h=6.6256*10^-34         //Js planck's constant
k=1.3805*10^-23         //J/K, boltzman constant
Eblmax=(2*%pi*h*c^2*(lmax*10^-6)^-5)/((exp(h*c/(lmax*10^-6*k*Ts)))-1)
printf("the maximum spectral emissive power is %f W/m^2\n",Eblmax)
//(f)
s=5.668*10^-8           //stephen costant
Eb=s*Ts^4
printf("the hemispherical total emissive power is %f W/m^2",Eb)
