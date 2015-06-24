                      //EXAMPLE 1-29      PG NO-27-28
C1=12;                  //CAPACITOR
C2=4;                    //CAPACITOR
C3=8;
C4=7;
C1=(C1*C2)/(C1+C2);                      //CAPACITOR IN SEREIS
disp('i)    Capacitor = '+string (C1)+' muF')
C2=(C3*C4)/(C3+C4);                      //CAPACITOR IN PARALLEL
disp('i)    Capacitor = '+string (C2)+' muF')
