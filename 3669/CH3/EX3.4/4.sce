//Variable declaration
a=1;    //assume
h1=1;
k1=0;
l1=0;
h2=1;
k2=1;
l2=0;
h3=1;
k3=1;
l3=1;

//Calculation
d100=a*6/(h1**2+k1**2+l1**2);
d110=a*6/(h2**2+k2**2+l2**2);
d111=a*(6)/(h3**2+k3**2+l3**2);

//Result
printf('ratio is %0.3f:%0.3f:%0.3f',sqrt( d100), sqrt(d110), sqrt( d111))