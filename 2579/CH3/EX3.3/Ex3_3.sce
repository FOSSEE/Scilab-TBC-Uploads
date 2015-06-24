//Ex:3.3
clc;
clear;
close;
// The phase difference, w=Bd*cos(a)+k
// In this case, d=y/2, k=0, therefore
// w= (2%pi/y)*(y/2)*cos(a)+0= %pi*cos(a)
// The total far field at distance point P is given by
// Et=Eo(exp^(-jw)+2+exp^(jw))=Eo*(2+2*cos(w))=2*Eo(1+cos(%pi*cos(a)))
// Maximum value mode of Et=4*Eo
// so the normal value Enor=Et/(mode of Et)=(1+cos(%pi*cos(a)))/2
// For the max value (1+cos(%pi*cos(a))) should be max , therefore 
// 1+cos(%pi*cos(a))=1
// cos(%pi*cos(a))=0
// %pi*cos(a)=%pi/2( in both sign plus & minuse)
a_m1=(acos(1/2))*(180/%pi);// when take + sign, angle will be in degree
a_m2=(acos(-1/2))*(180/%pi);//when take - sign, angle will be in degree
// For the max value (1+cos(%pi*cos(a))) should be max , therefore 
// 1+cos(%pi*cos(a))=0
// cos(%pi*cos(a))=-1
// %pi*cos(a)=%pi( in both sign plus & minuse)
a_m3=(acos(1))*(180/%pi);// when take + sign, angle will be in degree
a_m4=(acos(-1))*(180/%pi);//when take - sign, angle will be in degree
// for HPPD (1+cos(%pi*cos(a))) should be 1/sqrt(2)
// 1+cos(%pi*cos(a))=1/sqrt(2)
// cos(%pi*cos(a))=(1/sqrt(2))-1=-0.293
// %pi*cos(a)=107 degree   ( in both sign plus & minuse)
// cos(a_HPPD)=0.595  ( in both sign plus & minuse)
a_HPPD1=(acos(0.595))*(180/%pi);// when take + sign, the value of a_HPPD in degree
a_HPPD2=(acos(-0.595))*(180/%pi);// when take - sign, the value of a_HPPD in degree
printf("when take + sign, angle for maxima = %d degree", a_m1);
printf("\n when take - sign, angle for maxima= %d degree", a_m2);
printf("\n when take + sign, angle for minima= %d degree", a_m3);
printf("\n when take - sign, angle for minima= %d degree", a_m4);
printf("\n when take + sign, the value of HPPD= %d degree", a_HPPD1);
printf("\n when take - sign, the value of HPPD= %d degree", a_HPPD2);
printf("\n The Radiation pattern of the 3-element is shown in figure in the given text book");