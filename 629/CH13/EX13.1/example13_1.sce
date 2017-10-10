clear
clc
//Example 13.1 DISCHARGE FROM VELOCITY DATA
r=[0 5 10 15 20 25 30 35 40 45 47.5 50]; //[cm]
V=[50 49.5 49 48 46.5 45 43 40.5 37.5 34 25 0]; //velocity[m/s]

//dA=2*pi*r*dr, Q=V*dA
del_A(1)=0; //dA
q(1)=0;
for i=2:1:11
    del_r(i)=(r(i+1)-r(i-1))/2;//dr
    del_A(i)=2*%pi*r(i)*del_r(i)*10^-4; //[m^2]
    q(i)=V(i)*del_A(i); //[m^3/s]
end
//for i=12,
    del_r(12)=(r(12)-r(11)/2);
    del_A(12)=2*%pi*r(12)*del_r(12)*10^-4; //[m^2]
    q(12)=V(12)*del_A(12); //[m^3/s]

//Discharge
Q=sum(q) //m^3/s
printf("\nThe volume rate of flow = %.1f m^3/s.\n",Q)