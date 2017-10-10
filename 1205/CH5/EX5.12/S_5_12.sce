clc;
n=4; // no of component
d=25;//mm, diameter of holes
t=12.5;//mm Thickness
l=100;//mm, length in z direction
r=50;//mm , radius of quarter circle
V=[l*r*t,1/4*%pi*(r^2)*t,-%pi/4*d^2*t,-%pi/4*d^2*t];//mm^3, Volumes of part I,II , III and IV
x=[t/2,(r+t)/2,t/2,t/2];//mm, x components of centroids of part I,II , III and IV respectively
y=[-r/2,-4/3*r/%pi,-r/2,-r/2,r-r/2];//mm, y components of centroids of part I,II , III and IV respectively
z=[56.25,6.25,87.5,37.5];//mm, z components of centroids of part I,II , III and IV respectively
sumV=0;
sumxV=0;
sumyV=0;
sumzV=0;

for(i=1:n)
    sumV=sumV+V(i);
    sumxV=sumxV+x(i)*V(i);
    sumyV=sumyV+y(i)*V(i);
    sumzV=sumzV+z(i)*V(i);
    
end



//Location of centre of gravity
X=sumxV/sumV;// X co-ordinate
Y=sumyV/sumV;// Y co-ordinate
Z=sumzV/sumV;// Z co-ordinate

printf("Co-ordinates of centroid are X= %.2f mm, Y= %.1f mm and Z= %.2f mm \n",X,Y,Z);
