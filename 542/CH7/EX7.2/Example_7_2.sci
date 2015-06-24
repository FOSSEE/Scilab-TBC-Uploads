clear;
clc;
printf("\n Example 7.2");
//The slurry contains 100kg whiting/m^3 of water
printf("\n Volume of 100 kg whiting = %f m^3",100/3000);
printf("\n Volume of cake = %f m^3",0.0333/0.6);
printf("\n Volume of liquid in cake = %f m^3",0.05556*0.4);
printf("\n Volume of filtrate = %.3f m^3",(1-0.0222));
printf("\n volume of cake/volume of filtrate v = %f",0.0556/0.978);
A = 10^(-4);                 //area in sq meters
deltaP = -1.65*10^(5);       //P is in pascals
l = 0.01;                    //length is in meters
vol_flow_rate = 2*10^(-8);           //Volume flow rate is in m^3/sec
u = 10^(-3);                 //vicosity is in Ns/m^2

r = poly([0],'r');
r1 = roots((10^4)*(2*10^(-8)*r)-1.65*10^(5)/(10^(-5)));
printf("\n r = %.2f*10^(13)/m^2",r1*10^(-13));

function[Lopt]=optimum()
    Lopt = 1.161*10^(-3)*(900)^(0.5);  //t = 900 secs
    funcprot(0);
endfunction
printf("\n optimum frame thickness = %.1f mm",2*optimum()*1000);

//total cycle time = 1.015L^2 + 900
//rate of cake production R = L/(1.015L^2 + 900)
 
 L = poly([0],'L');
 L1 = roots(1.025*10^(6)*L^2 + 900 - 2.050*10^(6)*L^2);
 printf("\n Frame thickness = %.2f mm",2*L1(1)*10^3);
 




















