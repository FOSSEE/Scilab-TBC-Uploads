clc;
//page no 539
//prob no. 15.9
//A taxi compony using central dispatcher with antenna height=15m &amp; taxi antenna height=1.5m
ht=15;hr=1.5;
//a)Determination of max commn dist betn dispatcher and taxi
d1=sqrt(17*ht)+sqrt(17*hr);
disp('km',d1,'a)The max commn dist betn dispatcher &amp; taxi');
//b)Determination of max ommn dist betn 2 taxis
d2=sqrt(17*hr)+sqrt(17*hr);//ht=hr=height of antenna of taxi cab
disp('km',d2,'The max commn dist betn two taxi is');