// Example 2.4
//computation of (A) minimum speed of electron travelling (B) minimum frequency of photon//
// Page no. 47

clc;
clear;
close;

//Given data
ip=21.5;//ionization potential of neon
e=1.602*10^-19;
m=9.109*10^-31;
v_freespace=2.998*10^8;//velocity of light in free space
planck_const=6.63*10^-34;


//..................................(A)......................................//

//Calculation for velocity of the electron//
v=sqrt((2*ip*e)/m);

//..................................(B)......................................//

//Calculation for wavelength of a photon with energy equal to the ionization potential//
lambda=12400/ip;

//Calculation for frequency of the photon//
f=v_freespace/(lambda*10^-10);

//Calculation for frequency of the photon using alternate method//
f1=(ip*e)/planck_const;


//Displaying the result in command window
printf('\n Velocity of the electron = %0.2f x 10^6 m/sec',v*10^-6);
printf('\n \n Wavelength of a photon with energy equal to the ionization potential = %0.2f A',lambda);
printf('\n \n Frequency of the photon = %0.1f x 10^15 Hz',f*10^-15);






