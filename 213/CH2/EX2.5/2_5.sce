//To Find the Maximum Cutting Speed
clc
//Given:
s=500,s1=125,s2=250,s3=125 //mm
t=1 //second
//Solution:
//Matrices for the velocity vs. time graph
V=[0,750,750,0] //The velocity matrix
T=[0,1/3,2/3,1] //The time matrix
plot2d(T,V)
//Calculating the time of uniform acceleration
t1=rdivf('s1','v/2')
//Calculating the time of constant speed
t2=rdivf('s2','v')
//Calculating the time of uniform retardation
t3=rdivf('s3','v/2')
//Equating the time taken to complete the stroke to 1 second
v=(125/(1/2)+250/1+125/(1/2))/1 //mm/s
//Results:
printf("\n\n The maximum cutting speed, v = %d mm/s.\n\n",v)