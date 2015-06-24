//Variable declaration:
h1 = 800                        //Heat transfer coefficient for steam condensing inside coil (Btu/h.ft^2. F)
h2 = 40                         //Heat transfer coefficient for oil outside coil (Btu/h.ft^2. F)
h3 = 40                         //Heat transfer coefficient for oil inside tank wal (Btu/h.ft^2. F)
h4 = 2                          //Heat transfer coefficient for outer tank wall to ambient air (Btu/h.ft^2. F)
k1 = 0.039                      //Thermal conductivity of insulation layer (Btu/h.ft. F)
l1 = 2/12                       //Thickness of insulation layer (ft)
D = 10                          //Diameter of tank (ft)
H = 30                          //Height of tank (ft)
k2 = 224                        //Thermal conductivity of copper tube (Btu/h.ft. F)
l2 = (3/4)/12                   //Thickness of insulation layer (ft)
T1 = 120                        //Temperature of tank ( F)
T2 = 5                          //Outdoor temperature ( F)

//Calculation:
Uo1 = 1/(1/h3+(l1/k1)+1/h4)     //Overall heat transfer coefficient for tank (Btu/h.ft^2. F)
At = %pi*(D+2*l1)*H              //Surface area of tank (ft^2)
Q = Uo1*At*(T1-T2)              //Heat transfer rate lost from the tank (Btu/h)
//From table 6.3:
l2 = 0.049/12                   //Thickness of coil (ft)
A = 0.1963                      //Area of 18 guage, 3/4-inch copper tube (ft^2/ft)
Uo2 = 1/(1/h2+(l2/k2)+1/h1)     //Overall heat transfer coefficient for coil (Btu/h.ft^2. F)
//From steam tables:
Tst = 240                       //Temperature for 10 psia (24.7 psia) steam ( F)
Ac = Q/(Uo2*(Tst-T1))           //Area of tube (ft^2)
L = Ac/A                        //Lengt of tube (ft)

//Result:
printf("The length ofcopper tubing required is : %.1f ft",L)
