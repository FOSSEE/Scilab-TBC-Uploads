clc;
//Entire truss
//Applying sum(M_C)=0
E=(10*12+5*6)/3;//kN

//Applying sum Fx=0
Cx=0

//Applying sumFy=0

Cy=10+5-E;//kN

//At joint A
//By proportion 10kN/4=F_AB/3=F_AD/5
F_AB=10/4*3;//kN, force in member AB
F_DA=10/4*5;//kN, force in member AD

//At joint D
F_DB=F_DA;//kN, force in member DB
F_DE=2*3/5*F_DA;//kN, force in member DE

//At joint B
//applying sumFy=0
F_BE=5/4*(-5-4/5*F_DB);//kN, force in member BE
//Applying sumFx=0

F_BC=F_AB+3/5*F_DB-3/5*F_BE;//kN, force in member BC

//At joint E
//Applying sumFx=0
F_EC=-5/3*(F_DE-3/5*F_BE);//kN, Force in member EC

printf("The forces in member of truss are \n F_AB= %.1f kN T \n F_AD= %.1f kN C, \n F_DB= %.1f kN T, \n F_DE= %.0f kN C \n F_BE= %.2f kN  \n F_BC= %.2f kN \n F_EC= %.2f kN ",F_AB,F_DA,F_DB,F_DE,F_BE,F_BC,F_EC);
