clc
//

//Variable declaration
Su = 600    //ultimate normal stress(MPa)   
FS = 3.3    //Factor of safety with respect to failure
tU=350      //Ultimate shearing stress(MPa)
Cx=40       //X Component of reaction at C(kN)
Cy=65       //Y Component of reaction at C(kN)
Smax=300    //Allowable bearing stress of the steel 

//Calculation
C=sqrt(((40**2))+((65**2)))

//Case(a)
P=(15*0.6 + 50*0.3)/(0.6)  //Allowable bearing stress of the steel(MPa)
Sall=(Su/FS)               //Allowable Stress(MPa)
Sall=(Sall)         //Rounding Allowable stress to 1 decimal place(MPa)

Areqa=(P/(Sall*(1000)))    //Cross Sectional area(m^2)
Areqa=(Areqa)       //Rounding cross sectional area to 5 decimal places(m^2)

dAB=sqrt(((Areqa)*(4))/(22/7)) //Diameter of AB(m)
dAB=dAB*1000                        //Diameter of AB(mm)
dAB=(dAB)                    //Rounding Diameter of AB(mm)


//Case(b)
tALL=tU/FS                          //Stress(MPa)
tALL=(tALL)                  //Rounding of Stress

AreqC=((C/2)/tALL)                  //Cross sectional area(m^2)
AreqC=AreqC*1000                    
AreqC=(AreqC)                //Rounding the cross sectional area

dC=sqrt((4*AreqC)/(22/7))      //Diameter at point C
dC=((dC+1))                  //Rounding of the diameter at C


//Case(c)

Areq=((C/2)/Smax)                   
Areq=Areq*1000                      //Cross sectional area(mm^2)
t=(Areq/22)                         //Thickness of the bracket
t=(t)


//Result
printf("\n Case(a): Diameter of the bolt = % f mm' ,dAB)
printf("\n Case(a): Dimension b at Each End of the Bar = % f mm' ,dC)
printf("\n Case(a): Dimension h of the Bar = % f mm' ,t)
