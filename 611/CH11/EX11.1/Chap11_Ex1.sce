// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-11,Example 1,Page 378
//Title:P-x-y and T-x-y diagram for a Benzene Toluene system
//================================================================================================================
clear 
clc

//INPUT
antoine_const_benzene=[6.87987;1196.760;219.161];//Antoine's constants for Benzene from Table A.7
antoine_const_toluene=[6.95087;1342.310;219.187];//Antoine's constants for Toluene from Table A.7
t=95;//temperature at which the P-x-y diagram has to be prepared in degree celsius
P=101.325;//pressure at which the T-x-y diagram has to be prepared in kPa

//CALCULATION
//P-x-y diagram:
//For convenience Benzene is denoted as 1 and Toluene as 2
//The form of the Antoine's equation used is logP=A-(B/(t+C)), where P is in Torr and t is in degree celsius

P1_s=10^(antoine_const_benzene(1,:)-(antoine_const_benzene(2,:)/(t+antoine_const_benzene(3,:))));//calculation of saturation pressure of benzene at t in Torr
P2_s=10^(antoine_const_toluene(1,:)-(antoine_const_toluene(2,:)/(t+antoine_const_toluene(3,:))));//calculation of saturation pressure of toluene at t in Torr
x1=0:0.1:1;//mole fraction of benzene in the liquid phase (no unit)
i=1;//iteration parameter
n=length(x1);//iteration parameter
while i<n |i==n
    P_tot(i)=P2_s+((P1_s-P2_s)*x1(:,i));//calculation of the total pressure using Eq.B, Page 379 in Torr
        y1(i)=(x1(:,i)*P1_s)/(P_tot(i));//calculation of the mole fraction of Benzene in the vapour phase (no unit)
      i=i+1;
end

//T-x-y diagram:
P=760;//converting pressure from kPa to Torr. 760 Torr=101.325 kPa
//calculation of the saturation temperature of benzene at P in degree celsius
t1_s=((antoine_const_benzene(2,:))/(antoine_const_benzene(1,:)-log10(P)))-antoine_const_benzene(3,:);
//calculation of the saturation temperature of toluene at P in degree celsius
t2_s=((antoine_const_toluene(2,:))/(antoine_const_toluene(1,:)-log10(P)))-antoine_const_toluene(3,:);
//calculation of the saturation vapour pressures of Benzene (P1s) and Toluene (P2s)
//At T=t1_s, P=P1s=760.0 Torr, and at T=t2_s, P=P2s=760.0 Torr.
//X1 is given by X1=(P-P2s)/(P1s-P2s). Therefore at T=t1_s, X1=1.0 and at T=t2_s, X1=0.0
//As Y1=X1*P1s/P, Y1=1.0, when X1=1.0 and Y1=0.0,when X1=0.0.Therefore x1_initial=y1_initial=0.0(corresponding to t=t2_s) and x1_final=y1_final=1.0(corresponding to t=t1_s) where X1,x1_initial,x1_final are  the mole fractions of benzene in the liquid phase (no unit) and Y1,y1_initial,y1_final are the mole fractions of benzene in the vapour phase (no unit).
x1_initial=0.0;
y1_initial=0.0;
x1_final=1.0;
y1_final=1.0;
// An intermediate temperature is chosen such that t1_s<T<t2_s, and at different temperatures upto t2_s, the values of P1s, P2s, X1 and X1 are found out
T=85:5:105;//temepertaures at which P1s, P2s, X1 and Y1 are to be determined in degree celsius. The initial T is taken as 85 degree celsius, such that t1_s<T<t2_s
k=1;
l=length(T);
while k<l|k==l
P1s(k)=10^((antoine_const_benzene(1,:))-((antoine_const_benzene(2,:))/(T(:,k)+antoine_const_benzene(3,:))));//calculation of saturation pressure of benzene in Torr
P2s(k)=10^((antoine_const_toluene(1,:))-((antoine_const_toluene(2,:))/(T(:,k)+antoine_const_toluene(3,:))));//caclculation of saturation pressure of toluene in Torr
    X1(k)=(P-P2s(k))/(P1s(k)-P2s(k));//calculation of mole fraction of Benzene in liquid phase (no unit) 
    Y1(k)=(X1(k)*P1s(k))/P;//calculation of mole fraction of Benzene in vapour phase (no unit) 
    k=k+1;
end
//Generating the T-x-y data
    j=1;
    while j<l+2|j==l+2
        if j==1 then
            temp(j)=t1_s;
            x1_benzene(j)=x1_final;
            y1_benzene(j)=y1_final;
        else if j==l+2 then
                temp(j)=t2_s;
                x1_benzene(j)=x1_initial;
                y1_benzene(j)=y1_initial;
            else
                temp(j)=T(j-1);
                x1_benzene(j)=X1(j-1);
                y1_benzene(j)=Y1(j-1);
            end
        end
        j=j+1;
    end

//OUTPUT
mprintf('P-x-y results \n');
i=1;
for i = 1 : n
      mprintf('x1=%f \t y1=%f\t P=%f Torr \n\n',x1(i),y1(i),P_tot(i));
  end
  mprintf('T-x-y results \n t=%f degree celsius\t P1_s=760.0 Torr \t P2_s=(-) Torr \t\t x1=1.0 \t y1=1.0 \n\n',t1_s);
  k=1;
  for k= 1:l
       mprintf('t=%f degree celsius\t P1_s=%f Torr \t P2_s=%f Torr \t x1=%f \t y1=%f \n\n',T(k),P1s(k),P2s(k),X1(k),Y1(k));
  end
   mprintf('t=%f degree celsius\t P1_s=(-)Torr \t\t P2_s=760.0 Torr \t x1=0.0 \t y1=0.0 \n',t2_s);
   f1=scf(1);
   scf(f1);
plot(x1,P_tot,y1,P_tot);//generating the P-x-y plot
 xtitle('P-x-y diagram for benzene-toluene system at 95 degree celsius','x1,y1','P(Torr)');
 f2=scf(2);
 scf(f2);
 plot(x1_benzene,temp,y1_benzene,temp);//generating the T-x-y plot
 xtitle('T-x-y diagram for benzene-toluene sytem at 760 Torr','x1,y1','t (degree celsius)');

//===============================================END OF PROGRAM===================================================

