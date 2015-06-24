//Digital Communication-Coding Techniques : example 8-3 : (pg 368)
R=100*10^3;
Rf=10*10^3;
Vref=-10;
Vo=-(Vref)*(Rf/R);// resolution
a=(10/100);
b=(10/50);
c=(10/25);
d=(10/12.5);
V=-(Vref)*(a+b+c+d);//output voltage
printf("\nThe step-size is determined by leaving all switches open and closing the lsb");
printf("\nVo = -(-10V)(Rf/R) = %.1f",Vo);
printf("\nThe resolution is 1.0. If all switches are closed,a logic 1 is input.");
printf("\nVo = %.f V",V);