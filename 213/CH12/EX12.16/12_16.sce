//To find teeth, distance and efficiency
clc
//Given:
L=400/1000 //m
G=3
theta=50, phi=6 //degrees
pN=18 //mm
//Solution:
//Number of teeth on each wheel:
//Calculating the spiral angles of the driving and driven wheels
alpha1=theta/2 //degrees
alpha2=alpha1 //degrees
//Calculating the number of teeth on driver wheel
T1=L*1000*2*%pi/(pN*(1/cosd(alpha1)+G/cosd(alpha2)))
//Calculating the number of teeth on driven wheel
T2=G*T1
//Calculating the exact centre distance
L1=pN*T1/(2*%pi)*(1/cosd(alpha1)+G/cosd(alpha2)) //mm
//Calculating the efficiency of the drive
eta=(cosd(alpha2+phi)*cosd(alpha1))/(cosd(alpha1-phi)*cosd(alpha2))*100 //%
//Results:
printf("\n\n Number of teeth on driver wheel, T1 = %d.\n\n",T1+1)
printf(" Number of teeth on driven wheel, T2 = %d.\n\n", T2+1)
printf(" Exact centre distance, L1 = %.1f mm.\n\n",L1)
printf(" Efficiency of the drive, eta = %.1f %c.\n\n",eta,"%")