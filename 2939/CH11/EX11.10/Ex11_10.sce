//Ex11_10

clc;
//Given:
dose=4.06// in Gy/min
z=0.553;//Z/A for fricke solution 


// Formula : D(NaIo4)*(Z/A Fricke)=D(Fricke)*(Z/A NaIO4)

// Solution:

// Part(a) Chloroform
z1=58/119.5;// Z/A value for Chloroform
dose1=dose*z1/z;
Dose1=dose1*360;// for 6 hours // in Gy
printf("\n The dose absorbed by sodium periodate in 6 h is = %f Gy",Dose1)
// Part(b) Bromoform
z2=112/253;// Z/A value for Bromoform
dose2=dose*z2/z;
Dose2=dose2*360;// for 6 hours // in Gy
printf("\n \n The dose absorbed by sodium periodate in 6 h is = %f Gy",Dose2)
// Part(c) Iodoform
z3=166/394;// Z/A value for Iodoform
dose3=dose*z3/z;
Dose3=dose3*360;// for 6 hours // in Gy
printf("\n \n The dose absorbed by sodium periodate in 6 h is = %f Gy",Dose3)
