//Digital Communication-Coding Techniques : example 8-4 : (pg 375)
d=2;
d1=3;
d2=4;
x=d-1;
a=(d/2)-1;
y=d1-1;
b=1/2*(d1-1);
z=d2-1;
c=(d2/2)-1; 
//part (a)
printf("\nDmin = 2, the no. of error detected is (Dmin-1) = %.f",x);
printf("\nDmin is even, the no. of errors corrected equal = (Dmin/2)-1 = %.f",a);
printf("\nDmin = 3, the no. of error detected is (Dmin-1) = %.f",y);
printf("\nDmin is odd, the no. of errors corrected equal = (Dmin/2)-1 = %.f",b);
printf("\nDmin = 4, the no. of error detected is (Dmin-1) = %.f",z);
printf("\nDmin is even, the no. of errors corrected equal = (Dmin/2)-1 = %.f",c);
