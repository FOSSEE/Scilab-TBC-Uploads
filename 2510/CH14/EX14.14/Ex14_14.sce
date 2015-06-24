//Variable declaration:
Di = 0.825/12.0                         //Pipe inside diameter (ft)
Do = 1.05/12.0                          //Pipe outside diameter (ft)
Dl = 4.05/12.0                           //Insulation thickness (ft)
l = 1.0                                 //Pipe length (ft)
kp = 26.0                               //Thermal conductivity of pipe (Btu/h.ft.°F)
kl = 0.037                              //Thermal conductivity of insulation (Btu/h.ft.°F)
hi = 800.0                              //Steam film coefficient (Btu/h.ft^2.°F)
ho = 2.5                                //Air film coefficient (Btu/h.ft^2.°F)
pi = %pi

//Calculation:
ri = Di/2.0                             //Pipe inside radius (ft)
ro = Do/2.0                             //Pipe outside radius (ft)
rl = Dl/2.0                             //Insulation radius (ft)
Ai = pi*Di*l                            //Inside area of pipe (ft^2)
Ao = pi*Do*l                            //Outside area of pipe (ft^2)
Al = pi*Dl*l                            //Insulation area of pipe (ft^2)
A_Plm = (Ao-Ai)/log(Ao/Ai)              //Log mean area for steel pipe (ft^2)
A_Ilm = (Al-Ao)/log(Al/Ao)              //Log mean area for insulation (ft^2)
Ri = 1.0/(hi*Ai)                        //Air resistance (m^2.K/W)
Ro = 1.0/(ho*Al)                        //Steam resistance (m^2.K/W)
Rp = (ro-ri)/(kp*A_Plm)                 //Pipe resistance (m^2.K/W)
Rl = (rl-ro)/(kl*A_Ilm)                 //Insulation resistance (m^2.K/W)
U = 1.0/(Ai*(Ri+Rp+Ro+Rl))              //Overall heat coefficient based on the inside area (Btu/h.ft^2.°F)

//Result:
printf("The overall heat transfer coefficient based on the inside area of the pipe is : %.3f  Btu/h.ft^2.°F .",U)
