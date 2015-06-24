//Section-14,Example-1,Page no.-PC.59
//To calculate coefficient of viscosity of experimental liquid.
//(n_1/n_2)=(t_1*d_1)/(t_2*d_2)
n_2=1                 //Coefficient of viscosity of reference liquid.
t_1=45.32            //t_1and t_2 (times of flow) 
t_2=65.66
d_1=0.8               //d_1 and d_2 (densities) 
d_2=1.0
n_1=((n_2*t_1*d_1)/(t_2*d_2))
disp(n_1,'Coefficient of viscosity of experimental liquid(centipoise)')
