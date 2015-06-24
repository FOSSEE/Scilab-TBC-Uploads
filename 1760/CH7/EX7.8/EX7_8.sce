                                           //EXAMPLE 7-8    PG NO-442
Y11=0.5;
Y21=-0.1;
Z1=0.1;
Z2=0.9;
Z=(Z1*Z2)/(Z1+Z2);
disp('i) Impedance (Z) is  in  rectangular   form  =  '+string (Z) +'mho ');
I1=10*Z;
disp('ii) Current (I) is   in rectangular   form  =  '+string (I1) +'A ');
V11=I1/I1;
disp('i) VOLTAGE (V11) is   in rectangular   form  =  '+string (V11) +'V ');
