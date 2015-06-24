//variable initialization
x1=24                                         //position of event 1 in meters(frame s)
t1=8*10^(-8);                                 //time of event 1 in seconds(frame s)
x2=48                                         //position of event 2 in meters(frame s)
t2=4*10^(-8);                                 //time of event 2 in seconds(frame s)
c=3*10^8;                                     //speed of light in meter/second

//calculation of velocity of the frame s' so that both the events occur simultaneously
v=((c^2)*(t2-t1))/(x2-x1);                    //velocity of the frame s' (meter/second)

printf("\nvelocity of the frame s` = %.1e meter/second",v);
