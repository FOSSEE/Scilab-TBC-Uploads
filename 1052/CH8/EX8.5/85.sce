clc;
//Example 8.5
//page no 81 fig 8.3
printf(" Example 8.5 page no 81 fig 8.3\n\n\n");
//a cylindrical tank filled with water
//applying bernoulli equation
z1=9//elevation head at section 1
h2=1//height at section 2
D1=3//diameter of cylindrical tank 
D2=.3//diameter of outlet hole of tank
g=9.807//gravitational acceleration
printf("\n elevation head at section 1 z1=%f m\n height at section h2=%f m\n diameter of cylindrical tank D1=%f m\n diameter of outlet hole of tank D2=%f m\n gravitational acc. g=%f m/s^2",z1,h2,D1,D2,g);
t=2*[(sqrt(z1)-sqrt(h2))/((sqrt(2*g))*(D2/D1)^2)]
printf("\n time t=%f sec",t);
x=-(D2/D1)^2//ratio of a/g
printf("\n  x=%f",x);
//for this example the maximum acceleration is 1% of g,therefore saftey use Bernoulli equation  




