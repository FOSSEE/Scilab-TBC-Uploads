clear;
clc;
printf("\n Example 1.2");
//from given differential eq we get these functions
//particle number distribution for the size range 0-10um


//n=0.5*d^2;
//const of integration is0 since at n=0,d=0

//particle number distribution for the size range 10-100um
//n=83-(0.33*(10^(5))*d^(-3))
//c2=83,since at d=10um,n=50

//number distribution plot for the powdered material of size range 0-100um
function[n]= number_distribution(d)
    if(d<=10) then
        n=0.5*d^2;
    else
        n=83-(0.33*(10^(5))*d^(-3));
        end
        funcprot(0)
endfunction
d=0;
while(d<=100)
  n=number_distribution(d);
    plot(d,n,"+-");
    d=d+1; 
end 
xtitle("number_distribution_plot","diameter(um)","number distribution");
ps=[0 6.2 9.0 10.0 11.4 12.1 13.6 14.7 16.0 17.5 19.7 22.7 25.5 31.5 100];
function[n1]=difference(i)
//ps=[0 6.2 9.0 10.0 11.4 12.1 13.6 14.7 16.0 17.5 19.7 22.7 25.5 31.5 10];
//according to the given particle sizes particle sizes are in um
    n1=number_distribution(ps(i+1))-number_distribution(ps(i));
    funcprot(0);
endfunction
function[da]=average(i)
    da= (ps(i+1)+ps(i))/2;
    funcprot(0);
endfunction 
tot_n1d12=0;
tot_n1d13=0;
i=1;
for i=1:14 
        tot_n1d12=tot_n1d12+difference(i)*(average(i))^2;
        tot_n1d13=tot_n1d13+difference(i)*(average(i))^3;
end
printf("\n tot_n1d12 =%d \n tot_n1d13=%d",tot_n1d12,tot_n1d13);
function[s]=surface_area(j)
    s=(difference(j)*(average(j))^2)/tot_n1d12;
    funcprot(0);
endfunction
su=0;
j=0;
xset('window',1);

plot(0,0,"o-");
for j=1:14
    su=su+surface_area(j);
    plot(ps(j+1),su,"o-");
end
xtitle("surface area and mass distribution plot","diameter(um)","surface area or mass distribution");
//mass distribution plot
function[x]=mass_distribution(k)
    x=(difference(k)*(average(k))^3)/tot_n1d13;
    funcprot(0);
endfunction
ma=0;
k=0;
plot(0,0,"+-");
for k=1:14
    ma=ma+mass_distribution(k);
    plot(ps(k+1),ma,"+-");
end
//evaluating surface mean diameter
function[d]=surface_mean_diameter(l)
    e=0;
    for l=1:14
       n=(mass_distribution(l)/average(l));
       e=e+n;
    end
d=1/e;
    funcprot(0);
endfunction
printf("\nthe surface mean diameter is: %fum",surface_mean_diameter());
    
