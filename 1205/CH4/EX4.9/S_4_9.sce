clc;
theta=30;//degree, 
theta=theta*%pi/180;//rad, Conversion
e_AH=[0,sin(theta),cos(theta)];//Unit vector along AH
r_HC=[-50,250,0];
r_DC=[300,0,0];
r_FC=[350,20,0];

//Applying theory of Eqyuillibrium equations and equating coefficient to zero we get following equtions for cross product 
//by sum(Mc)=0
// Coefficient of i
T=100*10^3/216.5;//N,Tension wire AH
// Coefficient of j
Dz=-43.3*461.1/300;//N
//coefficient of k
Dy=(140*10^3+25*461.9)/300;//N
printf("Tension wire AH is %.0f N\n",T);
printf("Reaction at D is D=((%.0f N)j +(%.1f N)k \n",Dy,Dz);

//Applying sumF=0
Cx=0;//N, Xcomponent of C
Cy=-461.9*0.5-505.1+400;//N, Y component of C
Cz=-461.9*0.866-66.67;//N, Zcomponent of c
printf("Reaction at C is C=(%.0f N)i +(%.0f N)j +(%.0f N)k \n",Cx,Cy,Cz);
