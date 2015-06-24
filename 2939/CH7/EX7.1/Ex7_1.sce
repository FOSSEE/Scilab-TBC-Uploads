// Ex7_1

clc;

// Given:

f=1.03;// fast fission factor
n=1.32;// no. of fast neutrons generated per thermal radiations
ref=0.89;// resonance escape factor
tuf=0.87;// thermal utilization factor

// Solution

rf=f*n*ref*tuf;//reproduction factor

printf("The reproduction factor for the reactor is = %f",rf)
