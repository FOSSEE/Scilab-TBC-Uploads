//ex2.16  find (i)The refletion coefficient at the load-end  (ii)reflection coefficient at a distanceof 0.2lamda from the load-end  (iii)impedence at a distance of 0.2lamda from the load-end

Z0=300;
Y0=1/Z0;
YL=0.01+%i*0.02;
//reflection coefficient at load-end
Tl=(Y0-YL)/(Y0+YL);

//reflection coefficient at a distance of 0.2lamda towards the generator
Tl2=Tl*exp(-%i*2*2*%pi*0.2);

//impedence at location 0.2lamda on the line
Z=Z0*(1+Tl2)/(1-Tl2);

disp('Impedence at location 0.2lamda on the line is = '+string(Z)+' ohm','reflection coefficient at a distance of 0.2lamda towards the generator is = '+string(Tl2)+'','reflection coefficient at load-end is = '+string(Tl));
