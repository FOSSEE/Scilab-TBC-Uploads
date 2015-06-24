  //EXAMPLE 1-3   PG NO-18
A20=0.00393;  //ALPHA 20
R30=1.3;  //RESITANCE 30
A30=A20/(1+A20*(30-20));  //ALPHA 30
disp('i)Alpha30 (A30) = '+string (A30)+' ');
T=[((1.6/1.3)-1)/0.00378];   // THE RISE IN TEMPERATURE TO BE FIND    where T=t-30
disp('ii)Resistance Temperature (t-30) = '+string (T)+' degree celcious');


