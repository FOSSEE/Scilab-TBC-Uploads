clc;
n=3; // no of component
r=60;//mm, radius
l=100;//mm length of cylinder
V=[0.5*4/3*%pi*(r)^3,%pi*r*r*l,-%pi/3*r*r*l];//mm^3, Volumes of Hemisphere, cylinder and cone respectively
x=[-3/8*r,l/2,3/4*l];//mm, x components of centroids of Hemisphere, cylinder and cone respectively

sumV=0;
sumxV=0;

for(i=1:n)
    sumV=sumV+V(i);
    sumxV=sumxV+x(i)*V(i);
    
end



//Location of centre of gravity
X=sumxV/sumV;// X co-ordinate

printf("Co-ordinates of centroid are X= %.0f mm \n",X);
