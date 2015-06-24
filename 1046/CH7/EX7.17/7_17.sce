//Example 7.17
//calculate the net rate of exchange of radiation between the disks.
//given
r1i=0.1       //m, inner radius of disk 1
r1o=0.2       //m, outer radius of disk 1
r2i=0.12      //m, inner radius of disk 2
r2o=0.25      //m, outer radius of disk 2
h=0.08        //m, distance between the disks
R2=r2o/h
R1=r1o/h
X=1+(1+R1^2)/R2^2
F23_14=1/2*(X-sqrt(X^2-4*(R1/R2)^2))
//calculation of F23_4
R2_=r2o/h
R1_=r1i/h
X_=1+(1+R1_^2)/R2_^2
F23_4=1/2*(X_-sqrt(X_^2-4*(R1_/R2_)^2))     //view factor
//similarly
F3_14=0.815          //view factor
F34=0.4              //view factor
A23=%pi*r2o^2        //area
A3=%pi*r2i^2
A1=%pi*(r1o^2-r1i^2)
//from eq. 1
F12=A23*(F23_14-F23_4)/A1-(A3*(F3_14-F34))/A1
//calculation of the rate of radiative heat exchange
//given
T1=1000            //K, temprature of disk 1
T2=300             //K, temprature of disk 2
s=5.669*10^-8      //stephen's Boltzman constant
e1=0.8             //emissivity
e2=0.7
A2=%pi*(r2o^2-r2i^2)
F1s=1-F12
F2s=1-(A1*F12/A2)
//calculation
//let some quantities equal to 
a=(1-e1)/(e1*A1)
b=1/(A1*F12)
c=(1-e2)/(e2*A2)
d=1/(A1*F1s)
e=1/(A2*F2s)
f=s*T1^4
g=s*T2^4
//from eq. 7.42(a)
//(f-J1)/a=(J1-J2)/b+J1/d
//(g-J2)/c=(J2-J1)/b+J1/e
//solving two eqns by matrix
A=[-0.0564,0.5036;0.4712,-0.0564]
B=[161.847;21376.31]
X=inv(A)*B

J1=X([1])
J2=X([2])
//net rate of radiation exchange 
Q12net=(J1-J2)/b
printf("net rate of radiation exchange b/w disk 1 and 2 is %f W/m^2",Q12net)
