// Chapter 12 Example 3//
clc
clear
// from data given in the question -->> diameter of each strand=d,number of layers=n//
//diameter of conductor=D//
d=6.30;// in mm//
n=4;
D=(2*n-1)*d/10;// divide by 10 to convert from mm to cm//
printf("\n Total diameter of conductor = %.2f cm\n",D);
//tensile strength=s,safety factor=sf,working stress=t//
s=1250;// in kg//
sf=5;
t=s/sf;
printf("\n Working stress is given by %.2f kg\n",t);
// span length=l,weight of conductor=w,sag in stil air=d//
l=200;// in m//
w=0.4;// in kg/m //
d=(w*l^2)/(8*t);
printf("\n Sag in still air = %.2f m\n",d);
// sag if conductor covered by ice//
// weight of ice=wi,thickness of ice=ti,density of ice=pi//
ti=0.5;// in cms//
pi=915;// in kg/m^3 //
wi=%pi*((D+ti)*10^-2*ti*10^-2)*pi;// to convert from cms to ms//
wt=w+wi;
d=(wt*l^2)/(8*t);
printf("\n Total sag if conductor is covered by ice = %.2f m\n",d);
// sag is conductor is covered by ice and in presence of wind pressure //
// wind loading=ww,effective wind loadong=we,wind pressure=p//
p=10*10^-2;// in kg/cm^2  //
ww=(D+2*ti)*p;
we=sqrt(ww^2+(w+wi)^2);
printf("\n Effective Loading = %.3f kg/m\n",we);
d=(we*l^2)/(8*t);
printf("\n The total sag will be %.2f m\n",d);
// angle at which sag acts=sa//
sa=atand(ww/(wi+w));
printf("\n Angle at which sag acts is %.2f degrees to the vertical\n",sa);
//vertical sag=d1//
d1=d*cosd(sa);
printf("\n Vertical sag = %.2f m\n",d1);




















