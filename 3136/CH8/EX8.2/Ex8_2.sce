clear all; clc;

disp("Referring to figure 8.3,we have T_s2=T_01*((p2/p01)^((k-1)/k))")
T_01=2860
p2=180
p01=250
k=1.4//k=(Cp/Cv)
T_s2=T_01*((p2/p01)^((k-1)/k))
printf(" T_s2= %0.0f R",T_s2)

disp(" From ε_s=(h2-hs2)/((V_2^2)/2),we have Cp*(T2-Ts2=ε_s*(V_2^2)/2.Combining with Cp*(T_02-T_2)=((V_2^2)/2),where T02=T01, we have Cp*(T_02-Ts2)=(1+εs)*((V_2^2)/2)")
disp("V2=[2*Cp*(T_02-T_s2)/(1+εs)]^0.5")
T_02=T_01
Cp=0.24*778*32.2
epsilon_s=0.07
T_s2=2604
V2=[2*Cp*(T_02-T_s2)/(1+epsilon_s)]^0.5
printf(" V2= %0.0f ft/s",V2)

V2=1696
alpha2=65*%pi/180//converting to radians
V_u2=V2*sin(alpha2)
printf("\n Hence we have V_u2=V2*sin(α2) = %0.0f ft/s",V_u2)

Va=V2*cos(alpha2)
printf("\n Va=V2*cos(alpha2)= %0.1f ft/s",Va)

disp("T2=T_02-(V_2^2)/(2*Cp)")
T_02=2860
V2=1696
Cp=0.24*778*32.2
T2=T_02-(V2^2)/(2*Cp)
printf(" Hence we have T2= %0.0f R ",T2)

disp("Since V1=Va,we have T1=T_01-((V1^2)/(2*Cp))")
V1=716.8
T_01=2860//2860R
T1=T_01-((V1^2)/(2*Cp))
printf("T1= %0.0f R",T1)

disp("From delta_E=Cp*delta_T0s=U*(V_u2+V_u3)=U*V_u2, we have U=Ps/(m*V_u2)")
Ps=375*550*32.2//converting unit of Ps
m=3
V_u2=1537
U=Ps/(m*V_u2)
printf("U=%0.0f ft/s",U)

disp("φ=Va/U")
Va=716.8
U=1440
phi=Va/U
printf("φ=%0.3f",phi)

tanbeta3=U/Va
printf("\n tanß3= %0.2f",tanbeta3)

beta3=((atan(tanbeta3))*180/%pi)
printf("\n ß3= %0.1f degrees",beta3)

alpha3=0
phi=0.498
alpha2=65*%pi/180
R=1+((phi/2)*(tan(alpha3)-tan(alpha2)))
printf("\n R= %0.3f",R)

disp("Also from the velocity diagram in figure 8.4,we have tanß2=tanα2-(1/φ)=0.136,so ß2=7.8 degrees")
disp("Similarly we have W3=Va/cosß3=1606 ft/s and W2=Va/cosß2=723.5 ft/s")
disp("Across the rotor we have h2+(W2^2)/2=h3+(W3^2)/2. Hence T3=T2+(W2^2)-(W3^2)/(2*Cp)=2450R")
disp("We have Ts3=T3-εr*(W3^2)/(2*Cp)=2424R")
disp("Also p3=p2*(Ts3/T2)^(k/(k-1))=136.9 psia")
ETAs=(1+(0.12*(1606^2)+0.07*(1696^2)*(2450/2621))/(2*0.24*778*32.2*(2817-2450)))^-1
printf(" From equation 8.2 we have ETAs= %0.4f",ETAs)

//Let j=0.498/2
j=0.498/2
//Let k=0.12*[(sec(63.5*%pi/180))^2]
k=0.12*[(sec(63.5*%pi/180))^2]
//Let l=0.07*(2450/2621)*[(sec(65*%pi/180))^2]
l=0.07*(2450/2621)*[(sec(65*%pi/180))^2]
//let m=tan(63.5*%pi/180)+tan(7.8*%pi/180)
m=tan(63.5*%pi/180)+tan(7.8*%pi/180)

ETAs=[1+((j*(k+l))/m)]^-1
printf("\n From equation 8.3 we have ETAs= %0.4f",ETAs)

disp("Also ETAs can be calculated from ETAs=(T_01-T_03)/(T_01-T_ss03)")
disp("We have T_03=T3+V3^2/(2*Cp)")
disp("p03=p3*(T_03/T3)^(k/(k-1))")
disp("T_ss03=T_01*(p_03/(p_01)*((k-1)/k))")
ETAs=(2860-2493)/(2860-2450)
printf(" Hence we have ETAs= %0.3f",ETAs)









































