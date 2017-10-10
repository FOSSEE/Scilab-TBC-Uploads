clc;
Ix=4.31*10^6;//mm^4,Moment of inertia about x axis
Iy=2.90*10^6;//mm^4,Moment of inertia about y axis

n=3; // no of rectangle
b=12.7;//mm, Width of all rectangles
L=[76,102-2*b,76];//mm, Lengths of rectangle I, II and III respectively
x=[-L(1)/2+b/2,0,L(3)/2-b/2];//mm, x components of centroids of segment AB , BC and CA respectively
y=[L(2)/2+b/2,0,-L(2)/2-b/2];//mm, y components of centroids of segment AB , BC and CA respectively

sumxyA=0;

for(i=1:n)
    A(i)=L(i)*b;//mm^2, Area of rectangle
    sumxyA=sumxyA+x(i)*y(i)*A(i);//mm^4, moment of inertia 
    
end

Ixy=sumxyA;//mm^4

//Principal axes
Theta_m=1/2*atan(-2*Ixy/(Ix-Iy));//rad, 
Theta_m=Theta_m*180/%pi;//Degree, conversion into radian,Eqn 9.25

printf("Orientation of principle axes of section about O is Theta_m= %.1f degree \n",Theta_m);

//Principle moment of inertia, eqn 9.27
Imax=(Ix+Iy)/2+sqrt(((Ix-Iy)/2)^2+Ixy^2);//mm^4
Imin=(Ix+Iy)/2-sqrt(((Ix-Iy)/2)^2+Ixy^2);//mm^4

printf("Principle moment of inertia of section about O are \n Imax= %.2e mm^4 \n Imin= %.0e mm^4\n",Imax,Imin);

