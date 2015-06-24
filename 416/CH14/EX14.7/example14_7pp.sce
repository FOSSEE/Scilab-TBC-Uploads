clc
clear
disp('example 14.7')
p=100  //MVA of generated
f=50   //frequency
rpm=3000 //no load rpm
lad=25  //load applied to the machiene
t=0.5  //time delay 
h=4.5  //inertia constent
ke=h*p  //kinetic energy is product of h*p
lke=lad*t  //loss of ke
nf=(((ke-lke)/ke)^t)*f  //new frequency ((1-lke/ke)^t)*f
fd=(1-(nf/f))*100    //frequency deviation
printf("ke at no load %dMW-sec \n loss in k.e due to load %.1fMW-sec \nnew frequency %.1fHz \nfrequency deviation %.1fpercent",ke,lke,nf,fd)
