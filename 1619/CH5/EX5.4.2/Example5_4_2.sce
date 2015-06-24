//Example 5.4.2 page 5.14

clc;
clear;
Ttrans = 1.75*10^-9;
Tled = 3.50*10^-9;
Tcable=3.89*10^-9;
Tpin= 1*10^-9;
Trec= 1.94*10^-9;
Tsys= sqrt(Ttrans^2+Tled^2+Tcable^2+Tpin^2+Trec^2);
Tsys=Tsys*10^9;//converting in ns for dislaying...
printf("The system rise time is %.2f ns",Tsys)
Tsys=Tsys*10^-9;
BW= 0.35/Tsys;
BW=BW/1000000;//converting in MHz for dislaying...
printf("\n\nThe system bandwidth is %.2f MHz",BW);
