//variable initialization
interval_s=1                                              //time difference between two events in frame s (second)
interval_sdash=4                                          //time difference between two events in frame s' (second)
separation_s=0                                           //spatial separation of two events in frame s (meter)
c=3*10^8;                                                //speed of light (meter/second)
v=rand();                                                  //assign a random value to unknown velocity(meter/second)

//calculation of spatial separation of the events in frame s':
Gamma=interval_sdash/(interval_s-(v*(separation_s))/(c^2)); //calculating gamma

separation=-2*(((Gamma^2)-1)^(1/2))*c;                     //spatial separation in s' (meter)

printf("\nspatial separation of the events in frame s` = %.2e meter",separation);
