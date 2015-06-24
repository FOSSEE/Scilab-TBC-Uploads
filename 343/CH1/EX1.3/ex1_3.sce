alpha20=0.00403;                   //Assigning values to the parameters
t1=20;
t2=60;
R20=28.3;
R60=R20*(1+alpha20*(t2-t1));       // Calculating value of resistance at 60 deg C
disp(R60,"Resistance at 60 deg C is");