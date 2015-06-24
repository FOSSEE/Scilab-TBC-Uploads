clc;
//page 242
p=7850;//kg/m^3, density of steel rim
n=2; // no of component
A=[(20+60+20)*(30+20),-60*30];//mm^2,Cross section Areas of rectangle I and II

y=[375,365];//mm, y components of centroids of Rectangles I and II respectively


sumV=0;

for(i=1:n)
    C(i)=2*%pi*y(i);//mm, Distance travelled by C
    V(i)=A(i)*C(i);//mm^3, Volume of 1 component
    sumV=sumV+V(i);// mm^3, Total volume of rim
    
end
sumV=sumV*10^(-9);//Conversion into m^3
g=9.81;//m/s^2, acceleration due to gravity
m=p*sumV;//kg, mass
W=m*g;//N, Weight
printf("mass of steel is m= %.0f kg and Wight is W= %.0f N\n",m,W);

