//Example 2.9
//(a) derive eq. for temprature distribution
//(b) find the maximum temp.
//Given
di=0.15     //m, inner diameter
do=0.3      //m, outer diameter
Q1=100*10^3  //W/,m^3,inner  rate of heat generation
Q2=40*10^3   //W/m^3, outer rate of heat generation
Ti=100       //C, temp.at inside surface
To=200       //C, temp. at outside surface
k1=30        //W/m C, thermal conductivity of material for inner layer
k2=10        //W/m C, thermal conductivity of material for outer layer

//Calculation
//T1=364+100*log(r)-833.3*r^2          (1)
//T2=718+216*log(r)-1000*r^2           (2)
//(b)from eq. 1
r=sqrt(100/2*833.3)
printf("This radial position does not fall within layer 1.\n Therefore no temprature maximum occurs in this layer.")
//similarly
printf(" Similarly no temprature maximum occurs in  layer 2.\n")
ro=di        //m, outer boundary
Tmax=To
printf("The maximum temprature at the outer boundary is %f C",Tmax)
