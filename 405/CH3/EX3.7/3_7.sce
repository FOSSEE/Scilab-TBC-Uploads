clear;
clc;
printf("\t\t\tExample Number 3.7\n\n\n");
// numerical formulation with heat generation
// Example 3.7 (page no.-99-100)
// solution

d = 4;// [mm] diameter of wire 
Q = 500;// [MW/cubic meter] heat generation
Tos = 200;// [degree celsius] outside surface temperature of wire
k = 19;// [W/m degree celsius] thermal conductivity
// we shall make the calculations per unit length
dz = 1;
// because the system is one-dimensional, we take
dphai = 2*%pi;
dr = 0.5;// [mm]
// a summary of values for different nodes are following

// node 1.

rm1 = 0.25;// [mm]
Rmplus1 = (dr/2)/((rm1+dr/4)*dphai*dz*k);// [degree celsius/W]
// Rmminus1 = infinity
dV1 = rm1*dr*dphai*dz;// [cubic micro meter]
q1 = Q*dV1;// [W]

// node 2.

rm2 = 0.75;// [mm]
Rmplus2 = (dr/2)/((rm2+dr/4)*dphai*dz*k);// [degree celsius/W]
// Rmminus2 = infinity
dV2 = rm2*dr*dphai*dz;// [cubic micro meter]
q2 = Q*dV2;// [W]

// node 3.

rm3 = 1.25;// [mm]
Rmplus3 = (dr/2)/((rm3+dr/4)*dphai*dz*k);// [degree celsius/W]
// Rmminus3 = infinity
dV3 = rm3*dr*dphai*dz;// [cubic micro meter]
q3 = Q*dV3;// [W]

// node 4.

rm4 = 1.75;// [mm]
Rmplus4 = (dr/2)/((rm4+dr/4)*dphai*dz*k);// [degree celsius/W]
// Rmminus1 = infinity
dV4 = rm4*dr*dphai*dz;// [cubic micro meter]
q4 = Q*dV4;// [W]

// a summary of values of sum_one_by_Rij and Ti according to equation (3-32) is now given to be used in gauss seidal iteration scheme

// node 1

sum_one_by_Rij1 = (1/Rmplus1);// [degree celsius/W]
// the equations formed after putting values are
// T1 = 3.288+T2

// node 2

sum_one_by_Rij2 = (1/Rmplus2);// [degree celsius/W]
// the equations formed after putting values are
// T2 = 3.289+(1/3)*T1+(2/3)*T3

// node 3

sum_one_by_Rij3 = (1/Rmplus3);// [degree celsius/W]
// the equations formed after putting values are
// T3 = 3.290+ 0.4*T2+06*T4

// node 4

sum_one_by_Rij4 = (1/Rmplus4);// [degree celsius/W]
// the equations formed after putting values are
// T4 = 2.193+(2/7)*T3+142.857

// now we will solve these equations by iteration 
A=[1 -1 0 0;-(1/3) 1 -(2/3) 0;0 -0.4 1 -0.6;0 0 -(2/7) 1];
b=[3.288;3.289;3.290;142.857+2.193];
x=[240;230;220;210];
NumIters=13;
D=diag(A);
A=A-diag(D);
n=length(x);
x=x(:); 
y=zeros(n,NumIters);
for j=1:NumIters
    for z=1:n
        x(z)=(b(z)-A(z,:)*x)*D(z);
    end
    y(:,j)=x;
end
printf("thirteen iterations are now tabulated :\n");
disp(y);
// the total heat loss from the wire may be calculated as the conduction through Rmplus at node 4. then
T4 = y(4,13);// [degree celsius]
q = (T4-Tos)/(Rmplus4);// [W/m]
// this must equal the heat generated in the wire, or
V = %pi*(d*10^(-3)/2)^(2);// [square meter]
q_exact = Q*10^(6)*V;// [W/m]
printf("\n\n the total heat loss from the wire by the conduction through Rmplus at node 4 is %f kW/m",q/1000);
printf("\n\n heat generated in the wire is %f kW/m",q_exact/1000);
printf("\n\n the difference between the two values results from the inaccuracy in determination of T4");








