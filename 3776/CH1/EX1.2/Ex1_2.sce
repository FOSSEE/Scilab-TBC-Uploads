clear
//Given 
load_distributed = 20 //kN/sq.m, This is the load distributed over the pier
H = 2          // m, Total height 
h = 1          //m , point of investigation 
base = 1.5     //m The length of crossection in side veiw 
top = 0.5      //m ,The length where load is distributed on top
base_inv = 1   //m , the length at the point of investigation 
area = 0.5*1   //m ,The length at a-a crossection 
density_conc = 25 //kN/sq.m
//caliculation of total weight 

v_total = ((top+base)/2)*top*H       //sq.m ,The total volume 
w_total = v_total* density_conc  //kN , The total weight
R_top = (top**2)*load_distributed    //kN , THe reaction force due to load distribution 
reaction_net = w_total + R_top

//caliculation of State of stress at 1m 
v_inv = ((top+base_inv)/2)*top*h    //sq.m ,The total volume from 1m to top
w_inv = v_inv*density_conc          //kN , The total weight from 1m to top
reaction_net = w_inv + R_top        //kN
Stress = reaction_net/area           //kN/sq.m
printf("\n The total weight of pier is %0.3f kN",w_total)
printf("\n The stress at 1 m above is %0.1f kN/m**2",Stress)
