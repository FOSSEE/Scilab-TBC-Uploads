//Harmonic and Powerfactor with the Converter system//
//Example 8.7//
A=%pi/4;
h=6;
Wv=sqrt(2)*sqrt(h^2-cos(A)^2*(h^2-1))*100/(h^2-1);
printf('voltage ripple of the 6th harmonic=Wv=%fpercent',Wv);
printf('\nFor six pulse converter most effective harmonic is 6th and for worst case A=90degrees\n');
A=%pi/2;
Wv6=sqrt(2)*sqrt(h^2-cos(A)^2*(h^2-1))*100/(h^2-1);//maximum voltage ripple in percentage//
printf('\nmaximum voltage ripple=Wv6=%fpercent',Wv6);
A=%pi/4;
h=12;
Wv=sqrt(2)*sqrt(h^2-cos(A)^2*(h^2-1))*100/(h^2-1);
printf('\nvoltage ripple of the 12th harmonic=Wv=%fpercent',Wv);
A=%pi/2;
Wv12=sqrt(2)*sqrt(h^2-cos(A)^2*(h^2-1))*100/(h^2-1);//maximum voltage ripple in percentage//
printf('\nmaximum voltage ripple=Wv12=%fpercent',Wv12);
PR=(Wv6-Wv12)*100/Wv6;//percentage reduction in max. voltage ripple//
printf('\npercentage reduction in max. voltage ripple=PR=%fpercent',PR);