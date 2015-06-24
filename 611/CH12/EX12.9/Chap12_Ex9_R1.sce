// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-12,Example 9,Page 464
//Title: Temperature-composition diagram
//================================================================================================================
clear 
clc

//INPUT
//For convenience benzene is taken as 1 and water is taken as 2. They form a completely immiscible system
P=760;//pressure of the system in Torr
antoine_const_benzene=[6.87987;1196.760;219.161];//Antoine's constants for Benzene from Table A.7
t=60:5:100;//temperature range in degree celsius
//saturation pressure of water(in torr)in the temperature range given by t (from steam tables)
P2_s=[149.40;187.58;233.71;289.13;355.21;433.51;525.84;634.00;760.00];
x1=0:0.2:1;//mole fraction of benzene in the liquid phase (no unit) (taken in an arbitrary manner)

//CALCULATION
//The form of the Antoine's equation used is logP=A-(B/(t+C)), where P is in Torr and t is in degree celsius
//The three phase equilibrium temperature is estimated using the saturation pressure values,such that at the three phase equilibrium temperature,P=P1_s+P2_s=P as given by Eq.(12.57) Torr
l=length(t);//iteration parameter
i=1;//iteration parameter
while i<l|i==l
//calculation of saturation pressure of benzene at T in Torr
P1_s(i)=10^(antoine_const_benzene(1,:)-(antoine_const_benzene(2,:)/(t(:,i)+antoine_const_benzene(3,:))));
//calculating the total pressure in Torr so as to narrow down the temperature range for estimating the three phase equilibrium temperature
P_tot(i)=P1_s(i)+P2_s(i,:);
i=i+1;
end
//From the P_tot values calculated above, it is observed that the temperature range in which the three phase equilibrium temperature lies,is in between 65 and 70   degree celsius. Using linear interpolation , the three phase equilibrium temperature is determined in degree celsius
T=(((t(:,3)-t(:,2))*(760-P_tot(2,:)))/(P_tot(3,:)-P_tot(2,:)))+t(:,2);//linear interpolation to determine the three phase equilibrium temperature in degree celsius
//calculation of saturation pressure of benzene at the three phase temperature in Torr
P1_s_three_phase=10^(antoine_const_benzene(1,:)-(antoine_const_benzene(2,:)/(T+antoine_const_benzene(3,:))));
P2_s_three_phase=760-P1_s_three_phase;//calculation of the saturation pressure of water at the three phase temperature in Torr
y1_three_phase=P1_s_three_phase/760;//calculation of the mole fraction of benzene in the vapour phase at the three phase equilibrium point (no unit)
//redefining the temeprature range in degree celsius for computing the vapour compositions in the two phase regions. (As the three phase equilibrium temperature  lies between 65 and 70 degree celsius)
//The normal boiling point of benzene is given as 80.1 degree celsius (at a pressure of 760 Torr)
trange1=T:1:T+11;//temperature range for calculating vapour phase composition of benzene in the two phase region given by (L1+V)
n=length(trange1);//iteration parameter
i=1;//iteration parameter
while i<n|i==n
    if i==1 then
        y1(i)=y1_three_phase;//calculation of the vapour composition of benzene in the two phase region (L1+V) using Eq.(12.59) (no unit)
    else
         P1_s_calc(i)=10^(antoine_const_benzene(1,:)-(antoine_const_benzene(2,:)/(trange1(:,i)+antoine_const_benzene(3,:))));
    y1(i)=(P1_s_calc(i))/P;//calculation of the vapour composition of benzene in the two phase region (L1+V) using Eq.(12.59) (no unit)
    end
    i=i+1;
end
trange2=[70;75;80;85;90;95;100];//temperature range for calculating vapour phase composition of benzene in the two phase region given by (L2+V)
P2_s_range=[233.71;289.13;355.21;433.51;525.84;634.00;760.00];//saturation pressure of water(in torr)in the temperature range given by trange2 (from steam tables)
p=length(trange2);//iteration parameter
i=1;//iteration parameter
//calculation of the vapour composition of benzene in the two phase region (L2+V) using Eq.(12.61) (no unit)
y_one(i)=y1_three_phase;
trange2(i)=T;
i=i+1;
while i<p|i==p
        y_one(i)=(P-P2_s_range(i,:))/P;
    i=i+1;
end
i=1;//iteration parameter
k=length(x1);//iteration parameter
while i<k|i==k
    t_3phase(i)=T;//creating a vector for generating the plot at the three phase temperature
    i=i+1;
end

//OUTPUT
//Generating the T-x-y plot for the benzene-water system 
plot(y1,trange1);
plot(y_one,trange2);
plot(x1,t_3phase);
 xtitle('t-x-y diagram for benzene-water sytem at 760 Torr','x1,y1','t (degree celsius)');
q=length(t);//iteration parameter
i=1;//iteration parameter
mprintf('Calculations performed for determining the three phase equilibrium temperature\n');
mprintf('t(degree celsius) \t P1_s (Torr) \t P2_s (Torr) \t P1_s+P2_s (Torr) \n');
for i=1:q
    mprintf('%d \t \t \t %f \t %0.2f \t %f \n',t(i),P1_s(i),P2_s(i),P_tot(i));
end
mprintf('The three phase equilibrium temperature=%0.2f degree celsius \n',T);
mprintf('The vapour phase composition of benzene at the three phase equilibrium point=%0.4f \n',y1_three_phase);
//===============================================END OF PROGRAM===================================================


