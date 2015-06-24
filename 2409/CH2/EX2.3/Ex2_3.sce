
//Variable Declaration

R=6371   //Mean Earth's radius(km)
e=0.0011501  //Eccentricity
a=7192.3     //Semimajor axis(km)

//Calculation

ra=a*(1+e)   //Radius Vector at apogee(km)
rp=a*(1-e)   //Radius Vector at perigee(km)
ha=ra-R      //Apogee height(km)
hp=rp-R      //Perigee height(km)


//Result
printf("The Apogee height for given orbital parameters is: %.2f km",ha)
printf("The Apogee height for given orbital parameters is: %.2f km",hp)

