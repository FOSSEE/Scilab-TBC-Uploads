clear
clc
disp('Ex-12.14(a)');
P=2*10^14; V=2*10^-14; R=8.314; T=295;Na=6.023*10^23;   //varoius constants and given values
n=P*V/(R*T);       //ideal gas law
N=Na*n;f=10^-12         //avagadaro's number and fracction of carbon molecules
t12=5730*3.16*(10^7);   //half life
A=(0.693/t12)*N*f;    //activity
D1w=A*7*24*60*60;       //decays per second
 printf('The no of decays pers second is %4.0f \n',D1w);
 disp('Ex-12.14(b)');
c1=1420;             //concentration at instant 1
c2=D1w;              //concentration at instant 2
t12y=5730;          //half life
t=t12y*log(c2/c1)/0.693;            //age of the sample
printf('Age of the sample is %.2f years',t);