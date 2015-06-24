                          //EXAMPLE 1-11             PG NO-21
R55=58;                    //resistance
R15=50;                    //Resistance
T1=55;                  //Temperature 
T2=15;                    //Temperature
A15=[(R55/R15)-1]/(T1-T2);           //alpha 15
disp('i) ALPHA (A15)   =  '+string (A15)+' ');
T3=0;
A2=A15/[1+A15*(T3-T2)];               //Alpha 2
disp('ii)  ALPHA (A2)   =  '+string (A2)+' ');


