clc;
h=1
k=1
l=1
h1=1
k1=1
l1=1
a=((h*h1)-(k*k1)+(l*l1))/(sqrt((h*h)+(k*k)+(l*l))*sqrt((h1*h1)+(k1*k1)+(l1*l1)));
//cosine angle=a so angle=cosine inverse of a
thita=acosd(a);//angle between two planes
disp(+'degree',thita,'angle between two planes =')
