clc;
disp("Example 2.8");
Y=1.41;            //Young's Modulus.
R=1.293*10^-3;     //Density of air in g/centimetre cube.
P=76*13.6*980;     //atmospheric pressure in dyne/cm square.
V=sqrt((Y*P)/R);    //calculating speed using young's modulus.
disp(V,"Speed of ultrasonic wave in air at n.t.p. in cm/sec =  ");  //displaying result.  
disp(V*10^-2,"Speed in m/sec");  //displaying result.