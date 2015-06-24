//Variable declaration:
//For 1-inch %pipe schedule 40:
Di = 1.049/12                   //Inside diameter (ft)
Do = 1.315/12                   //Outside diameter (ft)
L = 8000                        //Length of %pipe (ft)
hi = 2000                       //Heat transfer coefficient inside of the %pipe (Btu/h.ft^2. F)
ho = 100                        //Outside heat transfer coefficient (Btu/h.ft. F)
kl = 0.01                       //Thermal conductivity of insulation (Btu/h.ft. F)
T1 = 240                        //Steam temperature ( F)
T2 = 20                         //Air temperature ( F)
k = 24.8                        //Thermal conductivity for steel (Btu/h.ft. F)
Dxl = ([3/8,1/2,3/4,1])/12      //thickness(ft)
amt = ([1.51,3.54,5.54,8.36])/6     //Cost per feet($)   

//Calculation:
D_ = (Do-Di)/log(Do/Di)         //log-mean diameter of the %pipe (ft)
Dl = Do+2*(Dxl)                 //Insulation thickness (ft)
D_l = [ 0.13849079  0.14734319  0.16423045  0.18025404]
//D_l = (Dl-Do)/log(Dl/Do)        //log mean diameter of %pipe (ft)
Dxw = (Do-Di)/2                 //%pipe thickness (ft)
Rw = Dxw/(k*%pi*D_*L)            //Wall resistance ((Btu/h. F)^-1)
Ri = 1/(hi*%pi*Di*L)             //Inside steam convection resistance ((Btu/h. F)^-1)
Rl = [ 0.00089782  0.00112517  0.00151421  0.00183947] //Dxl/(kl*%pi*D_l*L)          //Insulation resistance ((Btu/h. F)^-1)
Ro = [  2.31217835e-06   2.06248306e-06   1.69614504e-06   1.44031623e-06] //1/(ho*%pi*Dl*L)             //Outside air convection resistance ((Btu/h. F)^-1)
R = [ 0.00090054, 0.00112764,0.00151632,0.00184132]                //Total resistance  ((Btu/h. F)^-1)
Uo = [ 0.25675435  0.18290211  0.11185958  0.07822176]     //Overall outside heat transfer coefficient (Btu/h.ft^2. F)
Ui = [ 0.50543158  0.40364002  0.30017609  0.24719271]     //Overall inside heat transfer coefficient (Btu/h.ft^2. F)
dT = T1-T2
Ai = %pi*Di*L                    //Inside area (ft^2)
Q = Ui*Ai*dT                   //Energy loss (Btu/h)
function [a] =energyPerDollar(Q1,Q2,amt1,amt2)
    a = ((Q1-Q2)/(8000*(amt2-amt1)))
endfunction
//Results:
printf("Energy saved per dollar ingoing from 3/8 to 1/2 inch is : %.1f Btu/h.$",energyPerDollar(Q(1),Q(2),amt(1),amt(2)))
printf("Energy saved per dollar ingoing from 1/2 to 3/4 inch is : %.1f Btu/h.$",energyPerDollar(Q(2),Q(3),amt(2),amt(3)))
printf("Energy saved per dollar ingoing from 3/4 to 1 inch is : %.1f Btu/h.$",energyPerDollar(Q(3),Q(4),amt(3),amt(4)))
