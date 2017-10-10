//Chapter 9 Example1//
clc
clear
// number of strands=n//
n=7;
//from the diagram we get below realtions  where dxy= distance between x amd y//
k=2;//d12=d23=d34=d45=d56=d17=d27=d37=d47=d57=d67=k and assume r=1//
k1=0.7788;//d11=d22=d33=d44=d55=d66=d77=k1//
k2=2*2*sind(60);//d13=d24=d35=d46=k3//
// self geometric mean distance(GMD) of srtand1=ds1//
ds1=(k1*k*k2*2*k*k2*k*k)^(1/7);
printf("\n Self GMD of strand1 = %.4f r\n",ds1);// by observation ds1=ds2=ds3=ds4=ds5=ds6//
// self GMD of strand7=ds7//
ds7=(k*k*k*k*k*k*k1)^(1/7);
printf("\n Self GMD of strand7 = %.4f r\n",ds7);
//equivalent radius of the conductor=ds//
ds=(((ds1)^6)*ds7)^(1/7);
printf("\n Equivalent radius of 7-strand conductor = %.4f r\n",ds);