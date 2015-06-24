//Transport Processes and Seperation Process Principles
//Chapter 6
//Example 6.2-5
//Principles of Mass Transfer
//given data
//si units
P1=1;
T1=0+273;
Mb=74.1;//
Ma=29;
k=0
X=[4 10 1;16.5 1.98 5.48];
for i=1:3
    s=X(1,i)*X(2,i);
    k=k+s;
end
sumvb=20.1;
Dab1=((1/(10^7))*(T1^1.75)*(((1/Ma)+(1/Mb))^0.5))/(P1*((k^(1/3))+(sumvb^(1/3)))^2);
mprintf("i) Diffusivity= %f m2/s",Dab1)
T2=25.9+273;
Dab2=((1/(10^7))*(T2^1.75)*(((1/Ma)+(1/Mb))^0.5))/(P1*((k^(1/3))+(sumvb^(1/3)))^2);
mprintf("ii) Diffusivity= %f m2/s",Dab2);
T3=0+273;P3=2;
Dab3=((1/(10^7))*(T3^1.75)*(((1/Ma)+(1/Mb))^0.5))/(P3*((k^(1/3))+(sumvb^(1/3)))^2);
mprintf("iii) Diffusivity= %f m2/s",Dab3)
