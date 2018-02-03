clear
//
//

//Given
//Variable declaration
W=20*1000        //Total load in N
L=3.6            //Span in m
sigma_max=7      //Maximum stress in N/sq.mm

//Calculation
M1=W*L/8*1e3                                             //Maximum Bending moment in Nmm
b1=((M1*3/(sigma_max*2))**(1/3))                  //Breadth of the beam in mm

d1=int((2*b1))                                    //depth of the beam in mm

M2=W*L/4*1e3                                             //Maximum Bending moment in Nmm
b2=(((M2*3/(sigma_max*2))**(1/3)))  //Breadth of the beam in mm

d2=2*b2                                                  //depth of the beam in mm

//Result
printf("\n Dimensions of the cross-section:")
printf("\n Breadth of beam = %0.3f  mm",b1)
printf("\n Depth of beam %0.3f  mm",d1)

printf("\n Dimensions of the cross-section when the beam carries a point load at the centre:")
printf("\n Breadth of beam = %0.3f  mm",b2)
printf("\n Depth of beam %0.3f  mm",d2)
