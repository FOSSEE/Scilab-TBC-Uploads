//Example 2.3
//Page no. 19
//Given
//Length & Inside rdius of gas duct
L=1       //m
ri=0.5    //m
//Properties of inner and outer layer
ki=1.3    //W/m C, thermal conductivity of inner bricks
ti=0.27   //m, inner layer thickness 
ko=0.92   //W/m C, thermal conductivity of special bricks 
to=0.14   //m, outer layer thickness
Ti=400    //C, inner layer temp.
To=65     //C, outer layer temp.

//calculation
r_=ri+ti   //m, outer radius of fireclay  brick layer
ro=r_+to   //m, outer radius of special brick layer
//Heat transfer resistance
//Heat transfer resistance of fireclay brick
R1=(log(r_/ri))/(2*%pi*L*ki)
//Heat transfer resistance of special brick
R2=(log(ro/r_))/(2*%pi*L*ko)
//Total resistance
R=R1+R2
//Driving force
T=Ti-To
//Rate of heat loss
Q=T/(R)
printf("Rate of heat loss is %f W",Q)
//interface temp.
Tif=Ti-(Q*R1)
printf("interface temp.is  %f C",Tif)
//Fractional resistance offered  by the special brick layer
FR=R2/(R1+R2)
printf("Fractional resistance offered  by the special brick layer is %f ",FR)
