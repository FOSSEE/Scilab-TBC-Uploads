//Chapter 1 Example1//
//core refractive index of silica optical fibre =n1,cladding refractive index of silica optical fibre =n2,critical angle =p,angle of obliqueness=pm//
n1=1.5;n2=1.450;
p=asind(n2/n1);
pm=90-p;
printf("\n a)angle of obliqueness=%f\n",pm);
//refractive index for air=na,acceptance angle in air=a//
na=1;
h=sind(pm);
k=(n1*h)/(na);
a=asind(k);
printf("\n b) acceptance angle of fibre=%f\n",a);
//numerical aperture=NA,percentage of light collected=x//
NA=sqrt((n1+n2)*(n1-n2));
x=(NA^2)*100;
printf("\n.c) numerical aprture of fibre=%f\n",NA);
printf("\n.d) percentage of light collected=%f\n",x);


