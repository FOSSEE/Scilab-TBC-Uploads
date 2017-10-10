clear
//
//
//

//Variable declaration
ws_al=103     //working stress of Al
ws_mg=55     //working stress of Mg
ws_st=138     //working stress of steel
ws_g=35     //working stress of glass
d_al=2770   //density of Al
d_mg=1780   //density of Mg
d_st=7800   //density of steel
d_g=1370   //density of glass
A=10**6   //area
l=1      //length

//Calculation
L_al=ws_al*A    //load of Al
L_mg=ws_mg*A    //load of Mg
L_st=ws_st*A    //load of steel
L_g=ws_g*A    //load of glass
W_al=d_al*l    //weight of Al
W_mg=d_mg*l    //weight of Mg
W_st=d_st*l    //weight of steel
W_g=d_g*l    //weight of glass
r_al=L_al/W_al     //ratio of Al
r_mg=L_mg/W_mg     //ratio of Mg
r_st=L_st/W_st     //ratio of steel
r_g=L_g/W_g     //ratio of glass

//Result
printf("\n ratio of Al is %0.2f  *10**3",r_al/10**3)
printf("\n ratio of Mg is %0.2f  *10**3",r_mg/10**3)
printf("\n ratio of steel is %0.2f  *10**3",r_st/10**3)
printf("\n ratio of glass is %0.2f  *10**3",r_g/10**3)
printf("\n Aluminium alloy is the best material")
