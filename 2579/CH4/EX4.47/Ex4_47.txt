//Ex:4.47
clc;
clear;
close;
Y1=10;// the half power beam width in E-plane in degree
Y2=10;// the half power beam width in H-plane in degree
// Y1=51y/b, where y= wavelength 
// b=51y/10=5.1y
// Y2=67y/a, then a=67y/10=6.7y
// the directive gain, G=4.5*l*h/y^2=4.5*6.7y*5.1y/y^2=4.5*6.7*5.1
G=4.5*6.7*5.1;// the directive gain over the y/2 antenna
G1=10*log(G)/log(10);// the directive gain over the y/2 antenna in dB
printf("The dimension of the horn mouth, a=6.7*y, where y is wavelength in m");
printf("\n The dimension of the horn mouth, b=5.1*y, where y is wavelength in m");
printf("\n The directive gain over the y/2 antenna = %f", G);
printf("\n The directive gain over the y/2 antenna in dB = %f dB", G1);