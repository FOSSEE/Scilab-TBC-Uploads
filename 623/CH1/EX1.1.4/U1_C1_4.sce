//variable initialization
x1=20                                         //position of event 1 in meters(frame s)
t1=2*10^(-8);                                //time of event 1 in seconds(frame s)
x2=60                                        //position of event 2 in meters(frame s)
t2=3*10^(-8);                                //time of event 2 in seconds(frame s)
c=3*10^8;                                   //speed of light in meter/second
v=0.6*c;                                    //speed of frame s' relative to frame s (meter/second)
Beta=0.6
Gamma=1/((1-Beta^2)^(1/2));

//part(i):spatial separation of the events in frame s'
separation=Gamma*((x2-x1)-v*(t2-t1));       //spatial separation of the events in frame s' (meter)

//part(ii):time interval between the two events in frame s'
interval=Gamma*((t2-t1)-(v*(x2-x1))/(c^2)); //time interval between the two events in frame s' (second)

printf("\nIn frame s`:\n\t (i)spatial separation=%.2f meter\n\t (ii)time interval=%.2e second",separation,interval);
