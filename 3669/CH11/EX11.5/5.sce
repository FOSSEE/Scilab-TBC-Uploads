
//Variable declaration
NA=0.39;     //numerical aperture
n1_n2=0.05;    //difference in refractive indices

//Calculation
x=NA**2/n1_n2;
n2=(x-n1_n2)/2;     //refractive index of cladding
n1=n2+n1_n2;      //refractive index of core

//Result
printf('refractive index of core is %0.3f     \n',n1)
printf('refractive index of cladding is %0.3f     \n',n2)