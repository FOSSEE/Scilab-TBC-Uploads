     //EXAMPLE 5-7   PG NO-300
IR1=0.185;            //current 
IR2=0.0924;          //current
R=250;              //Resistance
P1=IR1*IR1*R;      //POWER
P2=IR2*IR2*R;    //POWER
P=P1+P2;        //POWER
disp('i) POWER (P1) is   =  '+string (P1)+'W ');
disp('i) POWER (P2) is   =  '+string (P2)+'W ');
disp('i) POWER (P) is   =  '+string (P)+'W ');
