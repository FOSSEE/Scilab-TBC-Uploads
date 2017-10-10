clc
deltalat=-5;..//geographic latitude
ag=9;..//apparent elevation angle
pi=3.14;
x=6378.4*(10^3);..//equatorial radius of earth
f=15*(10^6);
r=[6493 6593 6693 6793];
fc=[3.04*(10^6) 4.38*(10^6) 5.86*(10^6)];
for i=1:4
    j=1:3
    n(j)=sqrt(1-((fc(j)^2)/f^2));..//refractive index
    a(i)=acosd((x*cosd(ag))/r(i));..//apparent elevation angles
    phi(i)=sind((r(i)*cosd(a(i)))/(r(i+1)));
    theta(i)=(%pi/2)-a(i)-phi(i);
    R012=sqrt((r(1)^2)+(r(4)^2)-(2*r(1)*r(4)*cosd(sum(theta(i)))));
    R(i)=[r(i+1)*sind(theta(i))/cosd(a(i))];
    dela=a(i)-acosd((r(4)/R012)*sind(sum(theta(i))));
    delR=sum(R(i)/n(j))-R012;
    disp(n(j),"Refractive index of each layer");
    disp("degree",dela,"The refraction angle error");
    disp("km",delR,"The range error");
end;