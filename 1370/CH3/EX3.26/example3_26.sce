//example3.26
clc
disp("From O.C. test, P_i=Iron losses=75 W")
disp("From S.C. test, V_sc=9.5 V, I_sc=20A, W_sc=110 W")
disp("The meters are on H.V. side i.e. primary hence,")
z=9.5/20
format(6)
disp(z,"Z_1e(in ohm)=(V_sc)/(I_sc)=")
r=110/(20^2)
disp(r,"R_1e(in ohm)=(W_sc)/(I_sc)^2=")
x=sqrt((0.475^2)-(0.275^2))
format(7)
disp(x,"Therefore, (X_1e)[in ohm]=sqrt((Z_1e^2)-(R_1e^2))=")
i=(8*10^3)/400
disp(i,"I1(FL)[in A]=I_sc=VA/V1=(8*10^3)/400=")
disp("Therefore, (W_sc)[in W]=(P_cu)(FL)=110 W    ...Copper losses on full load")
disp("For   cos(phi)=0.8,  sin(phi)=0.6")
disp("Therefore, %R = I1(FL)*100*[R_1e*cos(phi)+X_1e*sin(phi)]")
r=(20*100*((0.275*0.8)+(0.3873*0.6)))/400
disp(r," = 20*100*[0.275*0.8+0.3873*0.6]/400= ")
disp("%eta_FL= VA*cos(phi)/(VA*cos(phi)+P_i+P_cu(FL))*100")
n=((8*10^3)*0.8*100)/((8*0.8*10^3)+75+110)
format(6)
disp(n,"= ((8*10^3)*0.8*100)/((8*0.8*10^3)+75+110)= ")
