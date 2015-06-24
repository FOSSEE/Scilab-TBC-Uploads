//To calculate the maximum value of d during the swinging of the rotor around its new equilibrium position
clc
clear
a=.25;//sindo=.25
do=asind(a);//
b=.5//sindc=.5
dc=asind(b);
c=cosd(do)+.5*do*%pi/180;
dm=dc;
e=1;
while(e>.0001)
    dm=dm+.1;
    e=abs(c-(((.5*dm*%pi)/180)+cosd(dm)));
end
printf("dm approximately found to be %d degree",dm);
