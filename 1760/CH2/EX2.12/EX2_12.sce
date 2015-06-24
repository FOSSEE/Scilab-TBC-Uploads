                 //EXAMPLE 2-12         PG NO-66-67
W1=80*%pi;              //womega
W2=100*%pi;
PV=14.14;            //peak value
t1=0.025;             //time
t2=0.05;
t3=0.075;
I1=PV*(cos(80*%pi*t1)+cos(100*%pi*t1));                  //current
I2=PV*(cos(80*%pi*t2)+cos(100*%pi*t2));                   //current
I3=PV*(cos(80*%pi*t3)+cos(100*%pi*t3));                   //current
disp('ii)   CURRNT (I) is    =  '+string (I1) +'  A');
disp('ii)   CURRNT (I) is    =  '+string (I2) +' A  ');
disp('ii)   CURRNT (I) is    =  '+string (I3) +'  A ');
