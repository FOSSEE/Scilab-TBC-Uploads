
//Variable declaration
a12=36;       //intensity 1
a22=1;        //intensity 2

//Calculation
a1=sqrt(a12);
a2=sqrt(a22);
Imin=(a1-a2)**2;     //minimum intensity
Imax=(a1+a2)**2;     //maximum intensity
r=Imax/Imin;

//Result
printf('ratio of maximum intensity to minimum intensity is %0.3f     \n',(r))