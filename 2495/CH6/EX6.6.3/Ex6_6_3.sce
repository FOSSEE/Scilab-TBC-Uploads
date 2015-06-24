clear 
clc
X1=80;//mol % of n-heptane
X2=90;//mol % of n-heptane
X3=95;//mol % of n-heptane
X=24;//mol % of n-heptane at -114.4 C
N1=(100-X1)/(X1-X);//at 80% of n-heptane
N2=(X1-X)/(100-X);//at 80% of n-heptane
N=((N2*100)/X1)*100;//%of n-heptane recovered w.r.t to original n-heptane
printf('N=%.1f',N)
N3=(100-X2)/(X2-X);//at 90% of n-heptane
N4=(X2-X)/(100-X);//at 90% of n-heptane
N=((N4*100)/X2)*100;//%of n-heptane recovered w.r.t to original n-heptane
printf('\nN=%.1f',N)
N5=(100-X3)/(X3-X);//at 95% of n-heptane
N6=(X3-X)/(100-X);//at 95% of n-heptane
N=((N6*100)/X3)*100;//%of n-heptane recovered w.r.t to original n-heptane
printf('\nN=%.1f',N)

//page 315
