
//Variable declaration
mew=1.33;      //refractive index of soap
t=5000*10**-10;    //thickness(m)
n0=0;
n1=1;
n2=2;
n3=3;

//Calculation
x=4*mew*t;
lamda1=x/((2*n0)+1);       //for n=0
lamda2=x/((2*n1)+1);       //for n=1
lamda3=x/((2*n2)+1);       //for n=2
lamda4=x/((2*n3)+1);       //for n=3

//Result
printf('%0.3f angstrom lies in the visible region', lamda3*10**10)