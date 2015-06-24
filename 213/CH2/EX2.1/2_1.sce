//To Find the Acceleration and Distance
clc
//Given:
u1=0,v1=72*1000/3600 //m/s
s1=500 //m
//Solution:
//Calculating the initial acceleration of the car
a1=(v1^2-u1^2)/(2*s1) //m/s^2
//Calculating time taken by the car to attain the speed
t1=(v1-u1)/a1 //seconds
//Parameters for the second case
u2=v1,v2=90*1000/3600 //m/s
t2=10 //seconds
//Calculating the acceleration for the second case
a2=(v2-u2)/t2 //m/s^2
//Calculating the distance moved by the car in the second case
s2=(u2*t2)+(a2/2*t2^2)
//Parameters for the third case
u3=v2,v3=0 //m/s
t3=5 //seconds
//Calculating the distance moved by the car
s3=(u3+v3)*t3/2 //m
//Results:
printf("\n\n The acceleration of the car, a = %.1f m/s^2. \n",a1)
printf(" The car takes t = %d s to attain the speed.\n",t1)
printf(" The acceleration of the car in the second case, a = %.1f m/s^2.",a2)
printf("\n The distance moved by the car, s = %d m.\n",s2)
printf(" The distance travelled by the car during braking, s = %.1f m.\n\n",s3)