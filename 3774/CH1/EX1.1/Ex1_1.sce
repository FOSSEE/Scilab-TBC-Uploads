// exa 1.1 Pg 13
clc;clear;close;
Nmax=1000;// rpm
Nmin=30;// rpm
z=9;// no. of steps

//Rn=Nmax/Nmin=fi**(z-1)
fi=(Nmax/Nmin)**(1/(z-1));// common ratio

printf('The speeds of gear box are:')
N1=Nmin;// rpm
for i=1:z
    printf('\n\t\t\tN%d = %.1f rpm',i,N1)
    N1=fi*N1;//rpm
end;

   
   
   
