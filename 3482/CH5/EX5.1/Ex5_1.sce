clc;
//page 228
n=4; // no of component
A=[120*80,120*60/2,%pi*60*60/2,-%pi*40*40];//mm^2, Areas of Rectangle, triangle, Semicircle, and Circle respectively
x=[60,40,60,60];//mm, x components of centroids of Rectangle, triangle, Semicircle, and Circle respectively
y=[40,-20,105.46,80];//mm, y components of centroids of Rectangle, triangle, Semicircle, and Circle respectively

sumA=0;
sumxA=0;
sumyA=0;

for(i=1:n)
    sumA=sumA+A(i);
    sumxA=sumxA+x(i)*A(i);
    sumyA=sumyA+y(i)*A(i);
    
end

// First Moment of area
Qx=sumyA;// About X axis
Qy=sumxA;//About Yaxis
printf("First moments of the area are Qx= %.0f mm^3 and Qy=%.0f mm^3 \n",Qx,Qy);

//Location of centroid
X=sumxA/sumA;// X co-ordinate
Y=sumyA/sumA;// Y co=ordinate
printf("Co-ordinates of centroid are X= %.1f mm and Y= %.1f mm \n",X,Y);
