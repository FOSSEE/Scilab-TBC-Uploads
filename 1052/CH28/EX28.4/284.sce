clc;
//Example 28.4
//page no 432
printf("Example 28.4 page  no 432\n\n");
//it is proposed to install a pulse jet fabric filter system to clean an air stream containing particulate pollutants
//we have to select the most apporpriate filter beg fabric 
q_scfm=10000//volumetric flow rate of polluted air stream at 60 deg F ,1 atm
T=520//temperature,R
T_o=710//operating temparature ,R
q_acfm=q_scfm*(T_o/T)//flow rate in acfm
v_f=2.5//filteration velocity,ft/min
S_c=q_acfm/v_f//filtering beg area
printf("\n filtering beg area S_c=%f ft^2",S_c);
//(1) for bag A ,the area and N number of bags are
D_a=8/12//diamter,ft
H_a=16//height,ft
S_a =%pi*D_a*H_a//area
N_a= round(S_c/S_a)//no. of bags  
printf("\n area S_a=%f ft^2\n number og bags N_a=%f ",S_a,N_a);
//(2) for bag B
D_b=10/12//diameter,ft
H_b=16//height,ft
S_b=%pi*D_b*H_b//area
N_b=round(S_c/S_b)//no. of bags
printf("\n area S_b=%f ft^2\n no. of bags N_b=%f ",S_b,N_b);
//total cost for each bag
//for bag A
c_a=26//cost per bag
TC_a=round(N_a*c_a)//total cost for A bag
printf("\n total cost TC_a=%f $",TC_a);
//for bag B
c_b=38//cost per bag
TC_b=N_b*c_b//total cost for bag B
printf("\n total cost TC_b=%f $",TC_b);
//since the total cost for bag A is less than bag B,select bag A
