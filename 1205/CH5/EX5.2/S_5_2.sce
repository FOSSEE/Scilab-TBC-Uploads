clc;
n=3; // no of segment
L=[600,650,250];//mm, Lengths of segment AB , BC and CA respectively
x=[300,300,0];//mm, x components of centroids of segment AB , BC and CA respectively
y=[0,125,125];//mm, y components of centroids of segment AB , BC and CA respectively

sumL=0;
sumxL=0;
sumyL=0;

for(i=1:n)
    sumL=sumL+L(i);
    sumxL=sumxL+x(i)*L(i);
    sumyL=sumyL+y(i)*L(i);
    
end



//Location of centre of gravity
X=sumxL/sumL;// X co-ordinate
Y=sumyL/sumL;// Y co=ordinate
printf("Co-ordinates of centroid are X= %.0f mm and Y= %.0f mm \n",X,Y);
