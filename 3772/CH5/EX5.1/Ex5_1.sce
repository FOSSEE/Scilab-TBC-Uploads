// Problem 5.1,Page no.121

clc;clear;
close;

b=100 //mm //width of timber joist
d=200 //mm //depth of joist
L=3 //m //Length of beam
sigma=7 //KN/mm**2 //bending stress
w_1=5 //KN/mm**2 //unit weight of timber

//Calculations
w=0.1*0.2*1*5*100 //N/m //self weight of the joist
I_xx=1*12**-1*100*200**3 //mm**4 //M.I of section about N.A

//M=W*L+w*L**2*2**-1 //Max Bending moment
//Therefore,M=(3*W+450)

//using the relation M*I**-1=sigma*y**-1,we get
W=(((7*2*10**8)*(100*10**3*3)**-1)-450)*3**-1 //N //Max Load applied

//Result
printf("The Max value of Load applied is %.2f N",W)
