

//example 4.10
//calculate average depth of precipitation using depth area curve
clc;funcprot(0);
//given
I=[25:-1:16];          //isohytes
a=[407 1008 1522 1909 2216 2460 2651 2782 2910 2936];  //enclosed area
ia(1)=407;
for i=2:10
    ia(i)=a(i)-a(i-1);
end
r=[25.5:-1:16.5]
for i=1:10
    rv(i)=r(i)*ia(i);
end
cv(1)=10378;
for i=2:10
    cv(i)=cv(i-1)+rv(i);
end
for i=1:10
    eud(i)=cv(i)/a(i);              //mean precipitation
end

mprintf("From depth area curve we obtain average depth of precipitation=24.1 mm for an \narea of 1800 sq. km.");
//graph is plotted between eud and a.
