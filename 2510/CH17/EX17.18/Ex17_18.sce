//Variable declaration:
//From example 17.18:
T = 250                         //Base temperature of fin ( F)
h = 15                          //Convection coefficient of heat transfer (Btu/h.ft. F)
w = 1                           //Base width of fin (ft)
t = 1                           //Thickness of fin (in)
H = 1/8                         //Height of fin (in)
l = 1                           //Length of fin (in)
Q = 357.2                       //Heat transfer rate (Btu/h.ft)

//Calculation:
A = (l*w+t*w+H*w)/12            //Heat transfer area of fin (ft^2)
Qm = h*A*(T-70)                 //Maximum heat transfer rate (Btu/h.ft)
n = Q/Qm*100                    //Fin efficiency

//Result:
printf("The fin efficiency is : %.1f %%",n)
