clc;
//page no:2-28
//Example-2.16
//Given output current of 60% modulated wave is 1.5A.
It=1.5;
u=0.6;
Ic=It/sqrt(1+(u^2/2));
disp(+'A',Ic,'Ic=' );
u1=0.6;
u2=0.7;
ut=sqrt(u1^2+u2^2);
disp(ut,'ut=' );
//Now current rise with modulation index 0.922 is calculated
u3=0.922;
Ic1=1.38;
It=Ic1*sqrt(1+(u3^2/2));
disp(+'A',It,'It=' ); 
//Ptotal=Pc+(Pc*u^2/4)+(Pc*u^2/4);
//Perceentage of power saving is to be calculated if the carrisideband and one of the sideband are suppressed
//P=(Pc+(Pc*u3^2/4))/(Pc+(Pc*u3^2/4)+(Pc*u3^2/4))*100;
P=(1+(u3^2/4))/(1+(u3^2/4)+(u3^2/4))*100;
disp(+'%', P, 'Percentage Power Saving=');
