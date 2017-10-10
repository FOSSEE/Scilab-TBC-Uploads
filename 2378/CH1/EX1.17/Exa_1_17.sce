//numerical fourier analysis (note:this example is same as Exa_1_13)
//Exa_1_17
clc;
clear;
close;

n=12;
        //number of time stations
m=5;
        //number of harmonics required
time=0.12;        //time period

x=[20000.0;34000.0;42000.0;49000.0;53000.0;70000.0;60000.0;36000.0;22000.0;
   16000.0;7000.0;0.0]';
        //presure in N/m^2
t=0.01:0.01:0.12;        //time in second

sumz=0.0;
        //temporary variable
for i=1:n        //calculating the coefficients
   sumz=sumz+x(i);
end
azero=2.0*sumz/n;
        //first term of fourier series  
for ii=1:m
   sums=0.0;
   sumc=0.0;
   for i=1:n
      theta=2.0*%pi*t(i)*ii/time;
      coss(i)=x(i)*cos(theta);
      sinn(i)=x(i)*sin(theta);
      sums=sums+sinn(i);
      sumc=sumc+coss(i);
   end
   a(ii)=2.0*sumc/n;
        //coefficient of cos terms
   b(ii)=2.0*sums/n;        //coefficient of sin term

end


//printing the table of values
printf('Fourier series expansion of the function x(t)\n\n');
printf('Data:\n\n');
printf('Number of data points in one cycle = %3.0f \n',n);
printf(' \n');
printf('Number of Fourier Coefficients required = %3.0f \n',m);
printf(' \n');
printf('Time period = %8.6e \n\n',time);
printf('Station i       ')
printf('Time at station i: t(i)         ')
printf('x(i) at t(i)')
for i=1:12
   printf('\n %8d%25.6e%27.6e ',i,t(i),x(i));
end
printf(' \n\n');
printf('Results of Fourier analysis:\n\n');
printf('azero=%8.6e \n\n',azero);
printf('values of i       a(i)                b(i)\n');
for i=1:5
   printf('%10.0g   %8.6e%20.6e \n',i,a(i),b(i));
end

 