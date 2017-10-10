//Chapter 12 Example 2//
clc
clear
// safety factor=w,maximum strength=s,working stress=t//
sf=2;
s=800;// in kg//
t=s/sf;
printf("\n Working stress = %.2f kg\n",t); 
// height of one support=h,height of support at other end=h1//
h=70;
h1=40;
// length of span=l,distance of minimum point from the lower support=x1//
l=160;
w=0.35;// in kg/m //
x1=(l/2)-((t*(h-h1))/(w*l));
printf("\n Minimum point is at distance of %.2f m from lower support.\n",x1);
h2=65;
x1=(l/2)-((t*(h-h2))/(w*l));
printf("\n Minimum point is at distance of %.2f m from lower span.\n",x1);
// Thus the minimum point lies inside the span i.e 44.29 m from lower span//
// sag from lower support =d1//
d1=(w*x1^2)/(2*t);
printf("\n Distance of sag from lower support = %.2f m\n",d1);
mgc=h2-d1;
printf("\n The minimum ground clearance = %.2f m\n",mgc);