//To find angle, teeth and efficiency
clc
//Given:
pN=12.5, L=134 //mm
theta=80, phi=6 //degrees
G=1.25
//Solution:
funcprot(0)
//Spiral angle of each wheel:
//Calculating the spiral angles of wheels 1 and 2
//We have, d2/d1 = (T2*cos(alpha1))/(T1*cos(alpha2)), or cos(alpha1)-G*cos(alpha2) = 0          .....(i)
//Also, alpha1+alpha2 = theta, or alpha1+alpha2-theta = 0                                           .....(ii)
function y=f(x)
    alpha1=x(1)
    alpha2=x(2)
    y(1)=cos(alpha1)-G*cos(alpha2)
    y(2)=alpha1+alpha2-theta*%pi/180
endfunction
z=fsolve([1,1],f)
alpha1=z(1)*180/%pi //Spiral angle for slower wheel, degrees
alpha2=z(2)*180/%pi //Spiral angle for faster wheel, degrees
//Number of teeth on each wheel:
//Calculating the diameters of the wheels
d1=L, d2 = d1 //mm
//Calculating the number of teeth on wheel 1
T1=d1*%pi*cosd(alpha1)/pN
//Calculating the number of teeth on wheel 2
T2=T1/G
//Calculating the efficiency of the drive
eta=(cosd(alpha2+phi)*cosd(alpha1))/(cosd(alpha1-phi)*cosd(alpha2))*100 //%
//Calculating the maximum efficiency
etamax=(cosd(theta+phi)+1)/(cosd(theta-phi)+1)*100 //%
//Results:
printf("\n\n Spiral angle for slower wheel, alpha1 = %.2f degrees.\n\n",alpha1)
printf(" Spiral angle for faster wheel, alpha2 = %.2f degrees.\n\n",alpha2)
printf(" Number of teeth on wheel 1, T1 = %d.\n\n",T1+1)
printf(" Number of teeth on wheel 2, T2 = %d.\n\n",T2+1)
printf(" Efficiency of the drive, eta = %d %c.\n\n",eta+1,"%")
printf(" Maximum efficiency, etamax = %.1f %c.\n\n",etamax,"%")