clear all; clc;

rm=8/12
N=7500
U=rm*N*%pi/30
printf("The peripheral velocity is calculated as U= %0.1f ft/s\n\n",U)

disp("From equation 9.1 we have U/V1=sinα1/4")
//let x= U/V1
alpha1=70*%pi/180
x=(sin(alpha1))/4
printf("\n Thus U/V1= %0.4f",x)

V1=U/x
printf("\n Thus V1= %0.1f ft/s",V1)

disp("From velocity diagram at station1 we have V1sinα1-W1sinß1=U and V1cosα1=W1cosß1 or W1sinß1")
//let y= W1sinß1
V1=2228.8
U=523.6
y=V1*sin(alpha1)-U
printf("\n Hence W1sinß1= %0.1f ft/s",y)

//Let z=W1cosß1
z=V1*cos(alpha1)
printf("\n Thus W1cosß1= %0.1f ft/s",z)

disp("Hence tanß1=2.06")
tanbeta1=2.06
beta1=(atan(tanbeta1))*180/%pi
printf("\n Thus beta1= %0.1f degrees and W1=1746 ft/s",beta1)

disp("At station 2 we have W2sinß2-V2sinα2=U and V2cosα2=W2cosß2,with W2=W1=1746ft/s and ß1=ß2=64.1 degrees")
//Let l=V2sinα2
l=1746*sin(64.1*%pi/180)-523.6
printf(" Thus V2sinα2=%0.0f ft/s",l)

//m=V2cosα2
m=1746*cos(64.1*%pi/180)
printf("\n V2cosα2 %0.2f ft/s",m)

disp("Hence tanα2=1.373")
tanalpha2=1.373
alpha2=((atan(tanalpha2)*180/%pi))
printf(" Hence α2= %0.2f degrees",alpha2)

disp("Hence V2=1295.2 ft/s")

disp("At station 3 we have V3sinα3-W3sinα3=U=523.6ft/s")
disp("Also W3cosß3=V3cosα3")
//let n=V3cosα3
V3=1295.2
alpha3=53.9*%pi/180
n=V3*cos(alpha3)
printf(" Thus W3cosß3= %0.1f ft/s",n)

disp("Hence tanß3=0.685")
tanbeta3=0.685
beta3=((atan(tanbeta3))*180/%pi)
printf(" Hence ß3= %0.1f degrees",beta3)

disp("Thus W3=925.1 ft/s")

disp("Also W4=W3=925.1ft/s")
disp("ß4=ß3=34.4 degrees")
disp("And V4=VaV1cosß4")
beta4=34.4*%pi/180
//let y=Va*V1
y=925.0848
V4=y*cos(beta4)
printf(" Thus V4= %0.1f ft/s",V4)
disp("α4=0 degrees")

disp("From these velocities,the energy transfers of the rotors can be calculated")

U=523.6
V1=2228.8
alpha1=70*%pi/180
V2=1295.2
alpha2=53.9*%pi/180
delta_E1=U*(V1*sin(alpha1)+V2*sin(alpha2))
printf(" Thus delta_E1= %0.1f ((ft/s)^2)",delta_E1)

delta_E1=1.643*(10^6)/(32.2*778)//converting units from (ft/s)^2 to Btu/lb
printf("\n On converting to Btu/lb we have delta_E1=%0.1f Btu/lb",delta_E1)

V3=1295.2
alpha3=alpha2
delta_E2=U*(V3*sin(alpha3))
printf("\n delta_E2=%0.1f ((ft/s)^2)",delta_E2)
delta_E2=0.546*(10^6)/(32.2*778)
printf("\n On converting to Btu/lb we have delta_E2=%0.1f Btu/lb",delta_E2)

delta_Ec=65.6+21.8
printf("\n Hence the total energy transfer is delta_Ec= %0.1f Btu/lb",delta_Ec)
disp("To compare with that calculated with equation9.3,we have delta_Ec=8*U^2")
delta_Ec=8*(U^2)
printf(" delta_Ec= %0.2f ((ft/s)^2)",delta_Ec)
delta_Ec=2.19*10^6/(32.2*778)//converting units
printf("\n On converting we have delta_Ec= %0.2f Btu/lb",delta_Ec)//answer given in the book is 87.5,however 87.42 is more accurate

disp("The difference is due to round off error.")
disp("The static enthalpies and pressure at stations 1,2,3 and 4 are same for the ideal case and can be calculated from h1=h01-((V1)^2)/2 ")
disp("Where h01=h0i=1405Btu/lb from the Mollier diagram for p0i=3000 psia,T01=950 degrees Farenheit")
//let l=(V1^2)/2
V1=2228.8
 l=(V1^2)/(2*32.2*778)
printf(" Thus (V1^2)/2 = %0.0f Btu/lb",l)

disp("Hence we have h1=1306 Btu/lb and p1=1400psia")

















































































