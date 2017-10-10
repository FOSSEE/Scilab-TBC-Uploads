////Given
E=1.02                               //Mev
b=0.51

//Calculation
//
alpha=E/b
a=1/(sqrt(2*(alpha+2)))
angle=2*(asin(a)*180/3.14)
e=E/(1.0+alpha*(1-(cos(angle*3.14/180.0))))

//Result
printf("\n (a) Angle for symmetric scattering is  %0.1f degree",angle)
printf("\n (b) energy of the scattered photon is  %0.2f Mev",e)
