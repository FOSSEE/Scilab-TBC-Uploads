//Example 2.7
//(a)what are the surface tempratures and average temp. of wall.
//(b)calculate the maximum temp. in the wall and its location
//(c)calculate the heat flux at the surface.
//(d)if there is heat generation then what is the
// average volumetric rate of heat generation?
//Given
x=poly(0,'x')
//temprature distribution in wall
T=600+2500*x-12000*x^2
t=0.3             //m, thickness of wall
k=23.5            //W/m c  thermal conductivity of wall

//Calculation
x1=0
T1=600+2500*x1-12000*x1^2    //C, at surface
x2=0.3
T2=600+2500*x2-12000*x2^2    //C, at x=0.3
Tav=1/t*integrate('600+2500*x-12000*x^2','x',0,0.3)
printf("At the surface x=0, the temp. is %f C\n",T1)
printf("At the surface x=0.3m, the temp. is %f C\n",T2)
printf("Rhe average temprature of the wall is %f C",Tav)

//(b)
D=derivat(T)                  //D=dT/dx
//for maximum temprature D=0
x3=2500/24000
printf("The maximum temprature occurs at %f m\n",x3)
Tmax=600+2500*x3-12000*x3^2
printf("The maximum temp. is %f C\n",Tmax)

//(c)
D1=2500-24000*x1         //at x=0, temprature gradient
Hf1=-k*D1                //W/m^2, heat flux at left surface(x=0)
D2=2500-24000*x2         //at x=0.3, temprature gradient
Hf2=-k*D2                //W/m^2, heat flux at right surface(x=0.3)
printf("heat flux at left surface is %f W/m^2\n",Hf1)
printf("heat flux at right surface is %f W/m^2\n",Hf2)

//(d)
Qt=Hf2-Hf1              //W/m^2, total rate of heat loss
Vw=0.3                  //m^3/m^2, volume of wall per unit surface area
Hav=Qt/Vw               //W/m^3, average volumetric rate
printf("The average volumetric rate if heat genaration is %fW/m^3 ",Hav)   
