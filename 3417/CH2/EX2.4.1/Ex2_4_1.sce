//Ex2.4.1.;Detremine local solar time and declination

//The local solar time=IST-4(standard time longitude-longitude of location)+Equation of time correstion
//IST=12h 30min;for the purpose of calculation we are writing it as a=12h,b=29 min 60sec;
a=12;
b=29.60;
//(standard time longitude-longitude of location)=82 degree 30min - 77 degree 30min;
//for the purpose of calculation we are writing it as
STL3=82.5-72.5;
//Equation of time correstion: 1 min 01 sec
//for the purpose of calculation we are writing it as
c=1.01;
//The local solar time=IST-4(standard time longitude-longitude of location)+Equation of time correstion
LST=b-STL3-c;
printf(" The local solar time=%f.%f in hr.min.sec",a,LST);
//Declination delta can be obtain by cooper's eqn : delta=23.45*sin((360/365)*(284+n))
n=170;//(on June 19)
//let
a=(360/365)*(284+n);aa=(a*%pi)/180;
//therefore
delta=23.45*sin(aa);
printf("\n delta=%f degree",delta);

