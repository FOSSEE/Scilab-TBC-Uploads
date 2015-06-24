//example3.16
clc
disp("100 kVA, 1000 V/ 10000 V, P_i=1200 W, cos(phi)=0.8, P_cu on I2 = 6A is 500W, X_2e=10 ohm")
disp("For eta_max, P_cu=(P_i)=1200 W")
i=(100*10^3)/10000
disp(i,"(I_2)F.L.[in A] = VA rating/V2 = (100*10^3)/10000 = ")
disp("Therefore, P_cu on any load/(P_cu)F.L. = [I2 load/I2 F.L]^2   ...As (P_cu) directly proportional I^2")
disp("Therefore, 500/(P_cu)F.L. = (6/10)^2")
p=500*(10/6)^2
format(8)
disp(p,"Therefore, (P_cu)F.L.[in W] = ")
k=100*sqrt(1200/1388.88)
disp(k,"kVA at eta_max = (kVA rating)*sqrt(P_i/(P_cu)F.L) = 100*sqrt(1200/1388.88) =")
disp("Therefore, % eta_max = (kVA for n_max cos(phi)*100)/(kVA for n_max cos(phi)+2P_i)")
n=(92951.8*0.8*100)/((92951.8*0.8)+(2*1200))
disp(n,"= (92951.8*0.8*100)/((92951.8*0.8)+(2*1200)) = ")
i=10*sqrt(1200/1388.88)
format(7)
disp(i,"(I_2m) at eta_max [in A]= (I_2)F.L. * sqrt(P_i/(P_cu)F.L.) = ")
disp("Therefore, (P_cu) at eta_max = P_i = (I_2m)^2 * R_2e")
disp("Therefore, 1200 = (9.2951^2)*R_2e")
r=1200/(9.2951^2)
disp(r,"Therefore, R_2e[in ohm] = ")
disp("% R = (I_2m)[R_2e cos(phi)+(X_2e)sin(phi) *100]/V2")
po=(9.2951*((13.889*0.8)+(10*10*0.6)))/100
format(5)
disp(po,"= (9.2951*((13.889*0.8)+(10*10*0.6))*100)/10000 = ") //answer in text book is wrong
