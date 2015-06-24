//Example 3.6
//calcu;ate the temp. of the liquid entering the bank.
//also calculate the insulation skin temp. at the flat
//top surface and at the cylindrical surface.
//Given
id=1.5                //m, internal diameter of tank
h=2.5                 //m, height of tank
t1=0.006              //m, thickness of wall
t2=0.04               //m, thickness of insulation
Ta=25                 //C, ambient temp.
T1=80                 //C, outlet temp. of liquid
cp=2000               //j/kg C, specific heat of liquid
FR=700/3600           //KG/s, Liquid flow rate

//Calculation
ri=id/2+t1            //m, inner radius of insulation
ro=ri+t2              //m, outer radius of insulation
ki=0.05               //W/m C, thermal conductivity of insulation
hc=4                  //W/m^2 C, heat transfer coefficient at cylindrical surface
ht=5.5                //W/m^2 C, heat transfer coefficient at flat surface
l=h+t1+t2             //m, height of the top of insulation
//fromm eq. 3.10
//heat transfer resistance of cylindrical wall
Rc=log(ro/ri)/(2*%pi*l*ki)+1/(2*%pi*ro*l*hc)
//heat transfer resistance of flat insulated top surface
Ri=(1/(%pi*ro^2))*((ro-ri)/ki+1/ht)
tdf=T1-Ta             //C, temp. driving force
Q=tdf/Rc + tdf/Ri       //W, total rate of heat loss
Tt=Q/(FR*cp)+T1        //C, inlet temp. of liquid
printf("Inlet liquid temp. should be %f C \n",Tt)
Q1=tdf/Ri   //W, rate of heat loss from flat surface
T1=Q1/(%pi*ro^2*ht)+Ta    
printf(" the insulation skin temp. at the flat top surface is %f C \n",T1)
//similarly
T2=38
printf("similarly  the insulation skin temp at cylindrical surface is %f C",T2)
