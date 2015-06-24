                                  //EXAMPLE 8-18         PG NO-533-534 
Z1=%i*413.05;                      //Impedance
Z2=%i*334.45;                      //Impedance
Zoc=(Z1/2)-Z2;
disp('i)   Impedance(Zoc) is    =  '+string ([Zoc]) +' ohm  ');
Zsc=(Z1/2)+[((Z1*-Z2)/2)/(-Z2+(Z1/2))];
disp('ii)  Impedance (Zsc) is    =  '+string ([Zsc]) +' ohm  ');
Zo=(Zoc*Zsc)^0.5;
disp('ii)  Impedance (Zo) is    =  '+string ([Zo]) +' ohm  ');
