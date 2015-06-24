//Ex3.6.1.;calculate: solar altitude anglr,Incident angle,Collector efficiency

//Solar declination :delta
n=1
delta=23.45*sin((360/365)*(284+n));
printf(" Solar declination delta=%f degree",delta);
fie=22;//degree
//solar hour angle ws=0,(at mean of 11:30 and 12:30)
ws=0;
//Solar altitude anglr alpha is given by

//alpha=asind(((cos(fie)*cos(delta)*cos(ws))+(sin(fie)*sin(delta)))
//let
a=cos((22*%pi)/180)*cos((-23*%pi)/180)*cos(0);
b=sin((22*%pi)/180)*sin((-23*%pi)/180);
//therefore
sin_alpha=a+b;
printf("\n sin_aplha=%f",sin_alpha);
alpha=asind(sin_alpha);
printf("\n aplha=%f Degree",alpha);
//Incident angle
theta=(180/2)-alpha;
printf("\n Incident angle=%f Degree",theta);
//Rb is given by
Rb=((cos(((22*%pi)/180)-(37*%pi)/180)*cos((-23*%pi)/180)*cos(0))+(sin(((22*%pi)/180)-(37*%pi)/180)* sin((-23*%pi)/180)))/sin_alpha;
printf("\n Rb=%f",Rb);
//Effective absorptance product is <t.alpha>=t.alpha/ 1-(1-alpha)*pd
pd=0.24;//Diffuse reflectance for two glass covers
//let TA=<t.alpha>
TA=(0.88*0.90)/(1-(1-0.90)*pd);
printf("\n Effective absorptance product is <t.alpha>=%f",TA);
//Solar radiation intensity(consider beam radiation only)
//Hb=0.5 ly/mm = 0.5 cal/cm^2 * min
Hb=((0.5*10^4)/10^3)*60;//unit=kcal/m^2 hr
printf("\n Hb=%f kcal/m^2 hr",Hb);
Hb=Hb*1.163;//unit=W/m^2 hr;   [since  1 kcal = 1.163 watt]
printf("\n Hb=%f W/m^2 hr",Hb);
//S=Hb*Rb*<t.alpha>
S=Hb*Rb*TA;
printf("\n S=%f W/m^2 hr",S);
s=S/1.163;
printf("\n S=%f kcal/m^2 hr",s);
//Useful gain
//qu=FR(S-UL*(Tfi-Ta))
qu=0.810*(s-(6.80*(60-15)))
printf("\n qu=%f kcal/m^2 hr",qu);
//Qu=FR(S-UL*(Tfi-Ta))
Qu=0.810*(S-(7.88*(60-15)))
printf("\n qu=%f W/m^2 hr",Qu);
//Collection Efficiency  : nc=(qu/(Hb*Rb))*100;
nc=(28.07/(300*Rb))*100;
printf("\n Collection Efficiency=%f persent",nc);


//values of "sine alpha" in the textbook is taken approximate to the real values
