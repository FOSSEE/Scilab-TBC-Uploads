//Ex2.7.1.;Determine the average values of radiation on a horizontal surface

//Declination delta for June 22=23.5 degree, sunrice hour angle ws
delta=(23.5*%pi)/180;//unit=radians
fie=(10*%pi)/180;;//unit=radians
//Sunrice hour angle ws=acosd(-tan(fie)*tan(delta))
ws=acosd(-tan(fie)*tan(delta));
printf(" Sunrice hour angle ws=%f Degree",ws);
n=172;//=days of the year (for June 22)
//We have the relation for Average insolation at the top of the atmosphere
//Ho=(24/%pi)*Isc*[{1+0.033*(360*n/365)}*((cos (fie)*cos(delta)*sin(ws))+(2*%pi*ws/360)*sin(fie)*sin(delta))]
Isc=1353;//SI unit=W/m^2
ISC=1165;//MKS unit=kcal/hr m^2
//let
a=24/%pi;
aa=(360*172)/365;aaa=(aa*%pi)/180;
b=cos(aaa);bb=0.033*b;bbb=1+bb;
c=(10*%pi)/180;c1=cos(c);
cc=(23.5*%pi)/180;cc1=cos(cc);
ccc=(94.39*%pi)/180;ccc1=sin(ccc);
c=c1*cc1*ccc1;
d=(2*%pi*ws)/360;
e=(10*%pi)/180;e1=sin(e);
ee=(23.5*%pi)/180;ee1=sin(ee);
e=e1*ee1;
//therefoe Ho in SI unit
Ho=a*Isc*(bbb*(c+(d*e)));
printf("\n SI UNIT->Ho=%f W/m^2",Ho);
Hac=Ho*(0.3+(0.51*0.55))
printf("\n SI UNIT->Hac=%f W/m^2 day",Hac);
ho=a*ISC*(bbb*(c+(d*e)));
printf("\n MKS UNIT->Ho=%f kcal/m^2",ho);
hac=ho*0.58;
printf("\n MKS UNIT->Hac=%f kcal/m^2 day",hac);

//The values are approximately same as in textbook
