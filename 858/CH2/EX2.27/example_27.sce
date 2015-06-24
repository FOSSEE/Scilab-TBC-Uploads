clc
clear 
printf("example 2.26 page number 80\n\n")

m1 = 162   //mass of calcium bi carbonate in mg
m2 = 73   //mass of magnesium bi carbonate in mg
m3 = 136  // mass of calsium sulfate in mg
m4 = 95   // mass of magnesium cloride
m5 = 500  //mass of sodium cloride in mg
m6 = 50   // mass of potassium cloride in mg

content_1 = m1*100/m1;    //content of calcium bi carbonate in mg
content_2 = m2*100/(2*m2);   //content of magnesium bi carbonate in mg
content_3 = m3*100/m3;  // content of calsium sufate in mg
content_4 = m4*100/m4;   // content of magnesium cloride

//part_1

temp_hardness = content_1 + content_2;   //depends on bicarbonate only
total_hardness = content_1+content_2+content_3+content_4;
printf("total hardness = %f\n temporary hardness = %f \n",temp_hardness,total_hardness)

//part 2
wt_lime = (74/100)*(content_1+2*content_2+content_4);
actual_lime = wt_lime/0.85;
printf("amount of lime required = %f \n",actual_lime)

soda_required = (106/100)*(content_1+content_4);
actual_soda = soda_required/0.98;
printf("amount of soda required = %f \n",actual_soda)
