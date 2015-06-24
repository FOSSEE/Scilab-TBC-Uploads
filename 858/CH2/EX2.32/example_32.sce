clc
clear 
printf("example 2.32 page number 84\n\n")

//to find the properties of humid air

p = 4.24   //in kPa
H_rel = 0.8;
p_partial = p*H_rel;
molal_H = p_partial/(100-p_partial);
printf("initial molal humidity = %f\n\n",molal_H)

//part 2
P = 200   //in kPa
p_partial = 1.70   //in kPa
final_H = p_partial/(P-p_partial);
printf("final molal humidity = %f\n\n",final_H)

//part 3
p_dryair = 100 - 3.39;
v = 100*(p_dryair/101.3)*(273/303);
moles_dryair = v/22.4;
vapor_initial = molal_H*moles_dryair;
vapor_final = final_H*moles_dryair;
water_condensed = (vapor_initial-vapor_final)*18;
printf("amount of water condensed = %f \n\n",water_condensed)

//part 4
total_air = moles_dryair+vapor_final;
final_v = 22.4*(101.3/200)*(288/273)*total_air;
printf("final volume of wety air = %f \n\n",final_v)
