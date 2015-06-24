clear all; clc;

disp("We have the duct resistance deltap=0.25*((7000/5000)^2)")
delta_p=0.25*((7000/5000)^2)
printf(" deltap %0.2f in.wg at 7000cfm",delta_p)

disp("The density in the building can be calculated from rho=p/R*T")
p=12.5
R=53.3
T=85+460
rho=p*144/(R*T)//144 is convesrion factor
printf("\n rho= %0.5f lbm/ft^3",rho)

disp("So the equivalent SPe of the required fan at STP can be found out")
SPe=0.49*0.075/0.0619
printf("\n SPe = %0.4f in.wg.",SPe)

disp("Form figure 5.24a,at SP=0.5,Q1=6894,N1=347,BHP1=0.76 and Q2=7660, N2=360, BHP2=0.88. Hence for Q=7000cfm we can determine Ndash")
Ndash=347+(360-347)*((7000-6894)/(7660-6894))
printf("\n Ndash is equal to %0.2f rpm",Ndash)

BHPdash=0.76+(0.88-0.76)*0.138
printf("\n BHPdash= %0.4f",BHPdash)

disp("At Sp=5/8=0.625 in.wg.,Q1=6894,N1=375,BHP1=0.92 and Q2=7660,N2=387,BHP2=1.05,so for Q=7000cfm we can determine Ndbldash and BHPdbldassh")

Ndbldash=375+((387-375)*0.138)
printf("\n Ndbldash %0.2f rpm",Ndbldash)

BHPdbldash=0.92+(1.05-0.92)*0.138
printf("\n BHPdbldash %0.4f hp",BHPdbldash)

disp("Again interpolating for SPe=0.593,we have values of N and BHP as mentioned below ")
N=348.8+(376.6-348.8)*((0.593-0.5)/(0.625-0.5))
printf("\n N= %0.0frpm",N)
BHP=0.776+(0.938-0.776)*0.744
printf("\n BHP= %0.4f hp",BHP)

disp("Correcting for the reduced air density,the actual BHP is determined")
BHP=0.896*0.0619/0.075
printf("\n Actual BHP is equal to %0.4f",BHP)

















