// chapter 4
//example 4.4
//page 196
Vsat=12;
R1=1000;R2=3000;//given
Vlt=(-(+Vsat)*R1)/R2;
disp(Vlt)// lower threshold
Vut=(-(-Vsat)*R1)/R2;//upper threshold
disp(Vut)
Vh=(R1/R2)*(Vsat-(-Vsat));//hysteresis width
disp(Vh)