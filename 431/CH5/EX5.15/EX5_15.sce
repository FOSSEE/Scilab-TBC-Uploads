//chapter 5
//example 5.15
//page 450
clear;
clc;
disp("example 5.15");
L=8000;     //load
La=5000;
pf=0.8;
phi=acosd(pf);
printf("\ntan phi=  %f\n",tand(phi));
disp("FOR ALTERNATOR A");
pf_a=0.9;
phi_a=acosd(pf_a);
printf("\ntan phi_a=  %f\n",tand(phi_a));
disp("reactive load=active load*tan phi");
disp("Active load=8000kW");
printf("reactive load=  %d KVAr\n",(8000*tand(phi_a)));
disp("Active Load A=5000kW\n");
printf("Reactive load A=  %dkVAr\n",(5000*tand(phi_a)));
printf("Active load of B=  %dkW\n",L-La);
a=((8000*tand(phi))-(5000*tand(phi_a)))
printf("Reactive load of B=  %dkVAr\n",a);
B=a/(L-La);
phi_b=atand(B);
printf("phi_b=  %f\n",phi_b)
printf("Power Factor of B=  %f",cosd(phi_b));