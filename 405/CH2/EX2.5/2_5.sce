clear;
clc;
printf("\t\t\tExample Number 2.5\n\n\n");
// critical insulation thickness  
// illustration2.5
// solution

k = 0.17;// [W/m per degree celsius] heat transfer coefficient of asbestos
Tr = 20;// [degree celsius] temperature of room air
h = 3;// [W/square meter per degree celsius] convectional heat transfer coefficient
Tp = 200;// [degree celsius] temperature of pipe
d = 0.05;// [m] diameter of pipe
// from equation (2-18) we calculate r_o as
r_o = k/h;// [m] critical radius of insulation
printf("critical radius of insulation for asbestos is %f cm ",r_o*100);
Ri = d/2;// [m] inside radius of insulation
// heat transfer is calculated from equation (2-17)
q_by_L = (2*3.14*(Tp-Tr))/(((log(r_o/Ri))/0.17)+(1/(h*r_o)));// [W/m] heat transfer per unit length
printf("\n heat loss when covered with critical radius of insulation is %f W/m",q_by_L);
// without insulation the convection from the outer surface of pipe is 
q_by_L1 = h*2*3.14*Ri*(Tp-Tr);// [W/m] convection from outer surface without insulation
printf("\n heat loss without  insulation is %f W/m",q_by_L1);
per_inc = ((q_by_L-q_by_L1)/q_by_L1)*100;// percentage increase in heat transfer
printf("\n so the addition of 3.17 of insulation actually increases the heat transfer by %f percent",per_inc);
