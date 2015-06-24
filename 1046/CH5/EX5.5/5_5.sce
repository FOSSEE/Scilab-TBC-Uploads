//Example 5.5
//Calculate , what thickness of insulation should be used 
//so that the insulation skin temp. does not exceed 65 C
//Given
Ts=65                       //C, skin temp.
To=30                       //C, ambient temp.
Tw=460                      //C, wall temp.
Tf=(Ts+To)/2                  //C,mean air film temp.
beeta=(1/(Tf+273))                //K^-1, coefficient of volumetric expansion
g=9.8                         //m/s^2, gravitational constant
mu=1.84*10^-5               //m^2/s, viscosity
L=10.5                      //m, height of converter
di=4                        //m,diameter of converter
Pr=0.705                    //Prandtl no.
k=0.0241                    //kcal/h m C, thermal conductivity

//Calculation
Grl=g*beeta*(Ts-To)*L^3/(mu^2)        //Grashof no.
x=di/L                      //assume di/l=x
y=35/(Grl)^(1/4)            //assume 35/(Grl)^(3/4)= y
//printf "x>y""
//for a verticla flat plate,  from eq. 5.3
Ral=Grl*Pr                  //Rayleigh no.
//nusslet no.
Nu=(0.825+(0.387*(Ral)^(1/6))/(1+(0.496/Pr)^(9/16))^(8/27))^2
hav=Nu*k/L                 //kcal/h m^2 C, average heat transfer coefficient
//w=poly(0,"w")
//Dav=(4+(4+2*w))/2                 //average diameter
//Aav=%pi*Dav*L                     //average heat transfer area
//Qi=%pi*Dav*L*0.0602*(Tw-Ts)/w     //Rate of heat transfer through insulation
//rate of heat transfer from the outer surface of the insulation by free convection
//Qc=hav*%pi*Dav*L*(Ts-To)          
//Qi=Qc
deff('[x]=f(w)','x=%pi*(4+w)*L*0.0602*(Tw-Ts)/w-hav*%pi*(4+2*w)*L*(Ts-To)')
w=fsolve(0.1,f)
printf("The required insulation thickness is %f m",w)
