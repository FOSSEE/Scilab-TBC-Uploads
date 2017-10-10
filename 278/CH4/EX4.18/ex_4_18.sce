
clc
//solution
//given
h=10//mm//height thru which weigth fall
l=3000//mm//length of bar
A=600//mm^2//xsection area of bar
dl=2//mm//change in length of bar
E=200*10^3//N/mm^2
//let f be stress
f=(E*dl)/l//N/mm^2
//let w be value of unknown weigth
//we know f=(W/A)*[1+sqrt{1+(2*h*A*E/W/l)}]
//400/3=(W/600)*[1+sqrt{1+(2*10*600*200*1000/W/3000)}]
W=6400*100/96//N
printf("the stress induces is,%f N/mm^2\n",f)
printf("the unknown weigth is,%f N",W)