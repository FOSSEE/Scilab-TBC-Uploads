//Ex11_9

clc;
//Given:
dose1=2.15// in Gy/min
// Z values
Na=11;
I=53;
O=8;
// A values
mNa=23;
mI=127;
mO=16;
z2=0.553;//Z/A for fricke solution 

// Solution:
z1=(11+53+8*4)/(127+23+16*4);// Z/A value for sodium periodate(Z/A NaIO4)

// Formula : D(NaIo4)*(Z/A Fricke)=D(Fricke)*(Z/A NaIO4)

dose2=(dose1*z1)/z2;// in Gy/min
// for 3 hours

Dose=dose2*180;// in Gy
printf("The dose absorbed by sodium periodate in 3 h is = %f Gy",Dose)


// Note: There is correction in the value of (Z/A NaIO4) calculated in the book. The actual value comes out to be 0.44859

