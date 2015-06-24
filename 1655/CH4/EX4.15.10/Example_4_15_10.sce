// Example 4.15.10  page 4.42

clc;
clear;

tau=0.1d-6;     //pulse broadning
dist=18d3;      //distance

Bopt=1/(2*tau);     //computing optical bandwidth
Bopt=Bopt*10^-6;
dispertion=tau/dist;        //computing dispersion
dispertion=dispertion*10^12;
BLP=Bopt*dist;      //computing Bandwidth length product
BLP=BLP*10^-3;
printf("\noptical bandwidth is %d MHz.\nDispersion per unit length is %.1f ns/km.\nBandwidth length product is %d MHz.km",Bopt,dispertion,BLP);
printf("\nNOTE - printing mistake in the book at dispersion per unit length.\nThey have printed ps/km; it should be ns/km");

//printing mistake in the book at dispersion per unit length.They have printed ps/km; it should be ns/km.
//answer in the book 5.55 ps/km (incorrect)
