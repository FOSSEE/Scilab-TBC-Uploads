//Harmonic and Powerfactor with the Converter system//
//Example 8.8//
Wv=18.6;
h=6;
C=sqrt(h^2-(Wv^2*((h^2-1)^2)/2*10^4))*10^6/sqrt(h^2-1);//cosine of triggering angle//
C=sqrt(14.68/35);
printf('cosine of triggering angle=C=%f',C);
A=acos(C)*180/%pi;
printf('\ntriggering angle of the device=A=%fdegrees',A);//endof program//
