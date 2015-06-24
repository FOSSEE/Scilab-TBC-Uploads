//Example 3.8
//determine(a) maximum allowable current
//(b) the corresponding remp. at the centre of wire and 
//at the outer  surface of insulation
//Given
ri=1.3*10^-3            //m, radius of 10 gauge wire
t=1.3*10^-3             //m, thickness of rubber insulation
Ti=90                   //C, temp. 0f insulation
To=30                   //C, ambient temp.
h=15                    //W/m^2 C, air film coefficient
km=380                  //W/m C, thermal cond. of copper
kc=0.14                 //W/m C, thermal cond. of rubber(insulation)
Rc=0.422/100            //ohm/m, eletrical resistance of copper wire

//NUMERIC CALCULATIONS
Tcmax=90                //X, the maximum temp. in insulation
ro=ri+t                 //m, outside radius of 10 gauge wire
Sv=((Tcmax-To)*(2*kc/ri^2))/(log(ro/ri)+kc/(h*ro))
//from eq.(xii), Sv=I^2*rho/(%pi*ri^2)
I=(%pi*ri^2*Sv/Rc)^0.5      //A, Current strength
printf("maximum allowable current is %f A\n",I)

//(b) at r=0
Tm=To+(ri^2*Sv/2)*(1/km+(log(ro/ri))/kc+1/(h*ro))
printf("remp. at the centre of wire is %f C\n",Tm)
//at r=ro
Tc=30+(ri^2*Sv/(2*kc))*(kc/(h*ro))
printf("The temprature at the outer surface of insulation is %f C",Tc)
