//ques-35.13
//Calculating force constant of a Br Br bond
clc
w_n=323.2;//wave number (in /cm)
m1=78.9183;//mass of Br(79) (in amu)
m2=80.9163;//mass of Br(81) (in amu)
r_m=(m1*m2)/((m1+m2)*6.023*10^23);//reduced mass
k=4*(%pi*3*10^10*w_n)^2*r_m;
printf("Thr required force constant is %.3f N/m.",k/1000);
