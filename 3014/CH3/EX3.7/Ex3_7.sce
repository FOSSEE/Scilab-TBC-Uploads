clc
// given that
theta1_deg = 5 // Absolut degree part of angle for first angle
theta1_min = 23//remainder minute part of angle for first angle
theta2_deg = 7 // Absolut degree part of angle for second angle
theta2_min = 37//remainder minute part of angle for second angle
theta3_deg = 9 // Absolut degree part of angle for third angle
theta3_min = 25//remainder minute part of angle for third angle

printf("Example 3.7 \n")
val1 = sin((theta1_deg+ theta1_min/60)*%pi/180)// Sin value for first angle
val2 = sin((theta2_deg+ theta2_min/60)*%pi/180) //Sin value for second angle
val3 = sin((theta3_deg+ theta3_min/60)*%pi/180)//Sin value for third angle
ratio_21 = val2/val1
ratio_31 = val3/val1
printf("\n Interatomic layer separation ratios in crystal are as\n 1 : %f : %f",ratio_21,ratio_31)
printf("\n Above relation shows that crystal is simple cubic crystal structure.")

