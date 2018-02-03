clear
//Given 
//
//
o = 22.5     //degrees , The angle of infetisimal wedge 
A = 1        //sq.mm The area of the element 
A_ab = 1*(cos((%pi/180)*(o))) //sq.mm - The area corresponds to AB
A_bc = 1*(sin((%pi/180)*(o))) //sq.mm - The area corresponds to BC
S_1 = 3 //MN The stresses applying on the element 
S_2 = 2 //MN
S_3 = 2 //MN
S_4 = 1 //MN 
F_1 = S_1*A_ab // The Forces obtained by multiplying stress by their areas 
F_2 = S_2*A_ab
F_3 = S_3*A_bc
F_4 = S_4*A_bc
//sum of F_N = 0 equilibrim in normal direction 
N = (F_1-F_3)*(cos((%pi/180)*(o))) + (F_4 - F_2)*(sin((%pi/180)*(o)))

//sum of F_s = 0 equilibrim in tangential direction 

S = (F_2-F_4)*(cos((%pi/180)*(o))) + (F_1 - F_3)*(sin((%pi/180)*(o)))

Stress_Normal = N/A //MPa - The stress action in normal direction on AB
Stress_tan = S/A    //MPa - The stress action in tangential direction on AB
printf("\n The stress action in normal direction on AB %0.2f MPa",Stress_Normal)
printf("\n The stress action in tangential direction on AB %0.2f MPa",Stress_tan)
