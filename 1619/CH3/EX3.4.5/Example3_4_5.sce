//Example 3.4.5 page 3.51

clc;
clear;
n1= 1.5;
n=1;
y=5;
a= 25;
temp1=(1-(y/(2*a)^2))^0.5;
temp1=temp1*(y/a);
temp=2*acosd(0.9996708);// it should be acos(0.1) actually... due to approximations
   // answer varies a lot... 
temp=temp-temp1;
//temp=temp;
tem= 16*(1.5^2)/(2.5^4);
tem=tem/%pi;
temp=temp*tem;
Nlat= temp;
printf("The Coupling efficiency is %.3f ",Nlat);
L= -10*log10(Nlat);
printf("\n\nThe insertion loss is %.2f dB",L);
temp1=(1-(y/(2*a)^2))^0.5;
temp1=temp1*(y/a);
temp=2*acosd(0.9996708);// it should be acos(0.1) actually... due to approximations
   // answer varies a lot... 
temp=temp-temp1;
temp=temp/%pi;
N_new =temp ;
printf("\n\nEfficiency when joint index is matched is %.3f",N_new);
L_new= -10*log10(N_new);
printf("\n\nThe new insertion loss is %.2f dB",L_new);
