clc;
//Example 12.1
//page no 124
printf("Example 12.1 page no 124\n\n");
T_i=660//temperature of flue at inlet in furnsce
D_1=6//inside diameter of pipe,ft
v_1=25//velocity  at inlet
printf("\n temperature at inlet T_i=%f k\n diameter at inlet D_1=%f ft\n velocity at inlet v_1=%f ft/s",T_i,D_1,v_1);
A_1=%pi/4*D_1^2;
q_1=A_1*v_1//volumatric flow rate at inlet
printf ("\n area at ilet A_1=%f st^2\n volumatric flow rate at inlet q_1=%f ft^3/s",A_1,q_1);
//applying charle's law for volumatic flow out of the scrubber
//given
T_2=2360//the temperature up to which furnace heats the gas
v_2=40//velocity of flow at outlet
printf("\n temperature T_2=%f k\n velocity of flow at outlet v_2=%f ft/s",T_2,v_2);
q_2=q_1*(T_2/T_i)//volumatric flow rate at outlet
A_2=q_2/v_2// cross sectional area at outlet duct
printf("\n volumatric flow rate at outlet q_2=%f ft^3/s\n cross sectional area at outlet A_2=%f ft^2 ",q_2,A_2);
D_2=sqrt(4*A_2/%pi)//diameter at outlet
printf("\n diameter at outlet D_2=%f ft ",D_2);
