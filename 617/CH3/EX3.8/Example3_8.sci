clear;
clc();

// To find the temperature of planes indicated by grid points using relaxation method
t1=800;            // inner surface temperature of wall in degF
t4=200;           //  outer surface temperature of wall in degF

//Grids are square in shape so delx =dely where delx,y sre dimensions of square grid 

t2=[700 550 550 587.5 587.5 596.9 596.9 599.3 599.3 599.8];             // Assumed temperature of grid point 1
t3=[300 300 375 375 393.8 393.8 398.5 398.5 399.6 399.6];               // Assumed temperature of grid point 2
 
for i=1:9
     th2(i)=t1+t3(i)-2*t2(i);; // th1= q/kz at grid pt1
     th3(i)=t2(i)+t4-2*t3(i);// th2= q/kz at grid pt2
     printf("\n Assuming t2=%.1f  degF and t2=%.1f degF \n th1[%d]=%.1f degF and th2[%d]=%.1f degF \n",t2(i),t3(i),i,th2(i),i,th3(i));     
     printf(" Since th2[%d] is not equal to th3[%d], hence other values of t2 and t3 are to be assumed\n",i,i);
end

printf("\nAssuming t2=600 degF and t3=400 degF, th2=th3.");
printf("\nHence Steady state condition is satisfied at grid temperatures of 400 degF and 600 degF");
