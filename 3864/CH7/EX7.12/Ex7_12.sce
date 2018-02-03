clear
//
//

//Initilization of Variables

//Direct stresses
p_x=120 //N/mm**2 //Tensile stress
p_y=-100 //N/mm**2 //Compressive stress
p1=160 //N/mm**2 //Major principal stress

//Calculations

//Let q be the shearing stress

//p1=(p_x+p_y)*2**-1+((((p_x+p_y)*2**-1)**2)+q**2)**0.5
//After further simplifying we get
q=(p1-((p_x+p_y)*2**-1))**2-((p_x-p_y)*2**-1)**2 //N/mm**2
q2=(q)**0.5 //N/mm**2

//Minimum Principal stress
p2=(p_x+p_y)*2**-1-(((p_x-p_y)*2**-1)**2+q2**2)**0.5 //N/mm**2

//Max shearing stress
q_max=(((p_x-p_y)*2**-1)**2+q2**2)**0.5 //N/mm**2

//Result
printf("\n Shearing stress of material %0.2f  N/mm**2",q)
printf("\n Min Principal stress %0.2f  N/mm**2",p2)
printf("\n Max shearing stress %0.2f  N/mm**2",q_max)
