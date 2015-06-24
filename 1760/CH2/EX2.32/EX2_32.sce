  //EXAMPLE 2-32    PG NO-83
cos30=0.866;
sin30=0.5;
E1=141.42+%i*0;
E2=144.566+%i*11.976;
V=E1+141.42*(cos30 * sin30 );
disp('1) Voltage  is in rectangular form   = '+string(V)+' W');
Z=8+%i*6;          //IMPEDANCE
I=V/Z;
disp('1) Current is in rectangular form   = '+string(I)+' A');
P=I*V*0.743;
disp(' POWER  is in rectangular form   = '+string(P)+' W');
