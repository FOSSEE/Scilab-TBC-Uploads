printf("\t example 17.6 \n");
printf("\t approximate values are mentioned in the book \n");
// basis 1ft^2 ground area
//Assumption: 20 per cent of the initial vapor content of the gas enters the water body
X1=(1.69/(14.7-1.69))*(18/29);
printf("\t X1 : %.4f lb/lb \n",X1);
G=1500;
w1=G*X1;
printf("\t total water in inlet gas : %.2f lb/hr \n",w1);
// The inlet gas is at 300F and a 120F dew point. Use 0.25 Btu/(lb)(°F) for the specific heat of nitrogen
H1=(0.0807*120)+(0.0807*1025.8)+(0.45*0.0807*(300-120))+(0.25*300); // eq 17.55
printf("\t H1 : %.0f Btu/lb dry air \n",H1);
X2=(w1*(1-.2)/G);
printf("\t outlet gas humidity : %.5f lb/lb \n",X2);
pw=(X2*29*14.7/18)/(1+(X2*29/18));
printf("\t pw : %.3f psia \n",pw);
Tw=112.9; // F, from table 7 for above pw
// The outlet gas has a temperature of 200°F and a 112.9°F dew point
H2=(X2*Tw)+(X2*1029.8)+(X2*0.45*(200-Tw))+(0.25*200); // eq 17.55
printf("\t H2 : %.1f Btu/lb dry air \n",H2);
q=G*(H1-H2);
printf("\t total heat load : %.2e Btu/hr \n",q);
w2=q/(120-85);
printf("\t water loading : %.2e lb/hr \n",w2);
printf("\t interval 1 \n");
// (Kxa*delV/L)= 0 t0 0.05
nd=0.05; // nd=Kxa*V/L
Le=0.93; // fig 17.4 at 300F
C=(0.25)+(0.45*X1);
printf("\t C : %.3f Btu/(lb)*(F) \n",C);
haV=(nd*w2*Le*C);
printf("\t haV : %.1f Btu/(hr)*(F) \n",haV);
qc=(haV*(300-120));
printf("\t qc : %.2e Btu/hr \n",qc);
delT=(qc/(C*G));
printf("\t delT : %.1f F \n",delT);
T1=(300-delT);
printf("\t T(0.05) : %.1f F \n",T1);
delt=(qc/w2);
printf("\t delt : %.2f F \n",delt);
t1=(120-delt);
printf("\t t(0.05) : %.1f F \n",t1);
printf("\t interval 2 \n");
// (Kxa*delV/L)= 0.05 to 0.15
nd1=0.1;
haV1=(nd1*w2*Le*C);
printf("\t haV1 : %.1f Btu/(hr)*(F) \n",haV1);
qc1=(haV1*(T1-t1));
printf("\t qc1 : %.1e Btu/hr \n",qc1);
delT1=(qc1/(C*G));
printf("\t delT1 : %.1f F \n",delT1);
T2=(T1-delT1);
printf("\t T(0.15) : %.2f F \n",T2);
X3=0.0748; // at 117.6F
w3=(nd1*w2*(0.0807-X3));
printf("\t water diffused during interval : %.3f lb/hr \n",w3);
w4=(w1-w3);
printf("\t water remaining : %.2f lb/hr \n",w4);
l1=1027; // Btu/lb, l1= lamda at 117.6F
qd=(w3*l1);
printf("\t qd : %.0f Btu/hr \n",qd);
q1=(qd+qc1);
printf("\t q1 : %.0f Btu/hr \n",q1);
delt1=(q1/w2);
printf("\t delt1 : %.2f F \n",delt1);
t2=(t1-delt1);
printf("\t t(0.15) : %.1f F \n",t2);
X4=0.0640; // at 112.5
X5=(w4/G);
printf("\t X(112.5F) : %.4f lb/lb \n",X5);
printf("\t interval 3 \n");
// (Kxa*delV/L)= 0.15 to 0.25
nd1=0.1;
haV1=(nd1*w2*Le*C);
printf("\t haV1 : %.1f Btu/(hr)*(F) \n",haV1);
qc2=(haV1*(T2-t2));
printf("\t qc2 : %.2e Btu/hr \n",qc2);
delT2=(qc2/(C*G));
printf("\t delT2 : %.1f F \n",delT2);
T3=(T2-delT2);
printf("\t T(0.25) : %.1f F \n",T3);
w5=(nd1*w2*(X5-X4));
printf("\t water diffused during interval : %.3f lb/hr \n",w5);
w6=(w4-w5);
printf("\t water remaining : %.2f lb/hr \n",w6);
l2=1030; // Btu/lb, l1= lamda at 112.5F
qd1=(w5*l2);
printf("\t qd1 : %.2e Btu/hr \n",qd1);
q2=(qd1+qc2);
printf("\t q2 : %.3e Btu/hr \n",q2);
delt2=(q2/w2);
printf("\t delt2 : %.2f F \n",delt2);
t3=(t2-delt2);
printf("\t t(0.25) : %.1f F \n",t3);
X6=0.0533; // at 106.5
X7=(w6/G);
printf("\t X(106.5F) : %.4f lb/lb \n",X7);
// The calculations of the remaining intervals until a. gas temperature of 200°F is reached are shown in Fig. 17.17
w7=21.92; // total water diffused from table in solution
d=(w7/w1)*100;
printf("\t calculated diffusion : %.0f \n",d);
printf("\t Using some standard low-pressure-drop data \n");
// For G = 1500, extrapolate to L = 2040 on logarithmic coordinates. Kxa = 510.
ndt=.54; // from 1st table in solution
Kxa=510; // from 2nd table in solution
Z=(ndt*w2/Kxa);
printf("\t tower height : %.2f ft \n",Z);
A=(50000/G);
printf("\t cross section : %.1f ft^2 \n",A);
// end



