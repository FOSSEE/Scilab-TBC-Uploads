
//Variable declaration
a=0.36;      //edge length(nm)
h1=1;
k1=1;
l1=1;
h2=3;
k2=2;
l2=1;

//Calculation
d1=a/sqrt(h1**2+k1**2+l1**2);    //interplanar spacing for (111)(nm)
d2=a/sqrt(h2**2+k2**2+l2**2);    //interplanar spacing for (321)(nm)

//Result
printf('interplanar spacing for (111) is %0.3f    nm \n',(d1))
printf('interplanar spacing for (321) is %0.3f  nm   \n',(d2))