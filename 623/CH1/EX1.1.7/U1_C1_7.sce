//variable initialization
interval_s=0                                                   //time difference between two events in frame s (second)
separation_s=1;                                                //spatial separation of two events in frame s (meter)
separation_sdash=2;                                            //spatial separation of two events in frame s' (meter)
c=3*10^8;                                                      //speed of light (meter/second)
v=rand();                                                      //assign a random value to unknown velocity of frame s' with respect to frame s (meter/second)

//calculation of time interval between the events in frame s'
Gamma=separation_sdash/(separation_s-(v*interval_s));          //calculating value of Gamma
Beta=(1-1/(Gamma^2))^(1/2);                                    //calculating value of Beta
v=Beta*c;                                                      //velocity of s' with respect to s (meter/second)
interval_sdash=Gamma*(interval_s-((v*separation_s)/(c^2)));    //time interval between the events in frame s' (second)

printf("\nThe time interval between the events in frame s` = %.2e X0",interval_sdash);
