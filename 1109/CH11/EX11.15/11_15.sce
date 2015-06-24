clear;
clc;
Za=300;Zc=600;R=1000;
Zi1=sqrt((Za*Za)+(Za*Zc));
Zi2=Za*Zc/sqrt((Za*Za)+(Za*Zc));
Zt1=(Za/2)+sqrt((Za*Za/4)+(Za*Zc));
Zt2=(-Za/2)+sqrt((Za*Za/4)+(Za*Zc));
printf("The image impedances are:\n ");
printf("Zi1 = %f ohms\n",round(Zi1*10)/10);
printf(" Zi2 = %f ohms\n",round(Zi2*10)/10);
printf(" Zt1 = %f ohms\n",Zt1);
printf(" Zt2 = %f ohms\n\n",Zt2);
I=(((R+Zt1+Zt2)*(R+Zt1)/(Zt1))-Zt1)*(1/(R+R));
Ir=20*log10(round((I*1000))/1000);
printf(" Insertion loss = %f db",Ir);



