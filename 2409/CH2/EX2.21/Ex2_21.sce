
//Variable Declaration

rI=-4685.3  //I component of radius vector from Example 2.16(km)
rJ=5047.7   //J component of radius vector from Example 2.16(km)
rK=-3289.1  //K component of radius vector from Example 2.16(km)
aE=6378.1414 //Semimajor axis (km)
eE=0.08182   //Eccentricity

//Calculation

r=sqrt(rI**2+rJ**2+rK**2)
a=%pi  //Guess value for LST(radians)
b=atan(rK/rI)   //Guess Value for latitude(radians)
c=r-aE   //Guess value for height(km)

function [ans] = equations(p)
    L = p(1)
    h = p(2)
    LST = p(3)
    a = rI-((aE/sqrt(1-eE**2*sin(L)**2))+h)*cos(L)*cos(LST)
    b = rJ-((aE/sqrt(1-eE**2*sin(L)**2))+h)*cos(L)*sin(LST)
    c = rK-((aE*(1-eE**2)/sqrt(1-eE**2*sin(L)**2))+h)*sin(L)
    ans = [a;b;c]
endfunction

ans =  fsolve([b;c;a],equations)
L = ans(1)
h = ans(2)
LST = ans(3)
L= L*180/3.142  //Converting L into degrees
h=round(h)
LST=LST*180/3.142 //Converting LST into degrees

printf("The latitude of subsatellite is %.2f degrees",L)
printf("\nThe height of subsatellite is %.2f km",h)
printf("\nThe LST of subsatellite is %.1f degrees",LST)
