    //EXAMPLE 2-28  PG NO-76
F=50;   //Frequency
L=0.2;  //inductance
XL1=500;
XL=(2*%pi*F*L);          
f=XL1/(2*%pi*L);                 //FREQUENCY
disp(' XL  is    = '+string(XL)+' ohms');
disp(' frequency  is    = '+string(f)+' Hz');
