//Introductory Topics :example 1-2 : (pg no. 9 & 10)
P=0.001;
R=75;
R1=50;
x=(8/20);
y=(10^x);
V2=(y*0.775);
V=sqrt(P*R);
V1=sqrt(P*R1);
//It is a 600 ohm system so 0.775 V reference is used
printf("\ndBm(600)= 20log(V2/0.775)");
printf("\nV2 = %.3f V",V2);
//voltage reference for 75-ohm system
printf("\nV=sqrt(P*R) = %.3f V",V);
printf("\ndBm(75)= 20log(V/0.274)");
//voltage reference for 50-Ohm system
printf("\nV=sqrt(P*R) = %.4f V",V1);
printf("\ndB(50)= 20log(V/0.2236)");