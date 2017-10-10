clc;
n=2; // no of triangle
A=[4.5,13.5];//kN, loads
x=[2,4];//mm, distances of centroid from point A

sumA=0;
sumxA=0;
for(i=1:n)
    sumA=sumA+A(i);
    sumxA=sumxA+x(i)*A(i);
        
end


//Location of centroid
X=sumxA/sumA;// X co-ordinate
W=sumA;//kN, Concentrated load
printf("The equivalent concentrated mass is W= %.0f kN and its line of action is located at a distance X= %.1f m to the right of A \n",W,X);

// Reactions
// Applying sum(F_x)=0
Bx=0;//N
//Applying sum(M_A)=0
By=W*X/6;//kN, Reaction at B in Y direction
//Applying sum(M_B)=0
A=W*(6-X)/6;//kN, Reaction at B in Y direction

printf("The rection at A=%.1f kN, At Bx=%.1f kN and By=%.1f kN \n",A,Bx,By);
