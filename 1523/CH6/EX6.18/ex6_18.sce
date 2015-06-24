// Three-Phase Circuits :example 6.18 :(pg 6.20)
VL=400;
Po=112*10^3;
pf=0.86;
phi=(acosd(pf));
N=0.88; //Efficiency
Pi=(Po/N);
IL=(Pi/(sqrt(3)*VL*pf));
Iph=(IL/sqrt(3));
AC=(Iph*pf);
RC=(Iph*sind(phi));
Aac=(IL*pf);
Arc=(IL*sind(phi));
printf("\nVL=400 V \nPo=112kW \npf=0.86 \nN=0.88");
//For a mesh-connected load (induction motor)
printf("\nVph=VL=%.f V",VL);
printf("\nN=Po/Pi  \nPi=%.2f W",Pi);//Input power
printf("\nPi=sqrt(3)*VL*IL*cos(phi) \nIL=%.1f A",IL);
printf("\nIph=IL/sqrt(3) =%.2f A",Iph);
//current in star-connected load=line current drawn by motor
printf("\nIA=%.1f A",IL);//current in alternate phase
printf("\nAC=Iph*cos(phi) =%.2f A",AC);//active component in each phase of motor
printf("\nRC=Iph*sin(phi) =%.2f A",RC);//Reactive component in each phase of motor
printf("\nAac=%.1f A",Aac);//active component in each alternate phase
printf("\nArc=%.2f A",Arc);//reactive component in each alternate phase

