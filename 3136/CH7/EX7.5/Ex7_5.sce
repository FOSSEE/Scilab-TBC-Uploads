clear all; clc;

disp("Assume constant axial flow velocity Va=500 ft/s , no prewhirl and hence V1=Va for the first stage and frre vortex conditions for all stages.")

disp("1. First Stage")

T1=530-((500^2)/(2*6012))
printf("T1= %0.1f R",T1)

p1=14.7*((509.2/530)^3.5)
printf("\n p1= %0.2f psia",p1)

rho_1=(12.78*144)/(53.33*509.2)
printf("\n rho_1= %0.5f lm/ft^3",rho_1)

disp("With a selected nu=rh/rt=0.45, A=m/(rho_1*Va)")
m=65
rho_1=0.0677
Va=500
A=m/(rho_1*Va)
printf("\n A= %0.2f ft^2 = 276.5in^2",A)

disp("A=pi*(r_t^2)*(1-nu^2)")
A=276.5
nu=0.45
r_t=sqrt(A/(%pi*(1-(nu^2))))
printf("\n r_t= %0.1f in",r_t)

disp("rm=7.6in")

disp("Ut=rt*omega")
N=15000
omega=N*%pi/30
rt=10.5/12//in feet
Ut=rt*omega
printf("\n Ut %0.1f ft/s",Ut)

rh=4.7/12//in feet
Uh=rh*omega
printf("\n Uh= %0.1f ft/s",Uh)

rm=7.6/12//in feet
Um=rm*omega
printf("\n Um= %0.1f ft/s",Um)//answer given in the book is 996.6,however 994.8 is more accurate

disp("Without inlet whirl flow,we have Wt=(Ut^2+Va^2)^0.5")
Ut=1374.4
Va=500
Wt=sqrt(Ut^2+Va^2)
printf("\n Thus Wt = %0.0ft/s",Wt)

Uh=615.2
Va=500
Wh=sqrt(Uh^2+Va^2)
printf("\n Thus Wh = %0.1ft/s",Wh)

Um=996.6//This is the answer substituted in the book,although as mentioned earlier 994.8 is more accurate.
Va=500
Wm=sqrt(Um^2+Va^2)
printf("\n Thus Wm = %0.1ft/s",Wm)

tanbeta1m=Um/Va
printf("\n tanß1m= %0.2f",tanbeta1m)

beta1m=((atan(tanbeta1m)))*180/%pi
printf("\n ß1m= %0.1f degrees",beta1m)

disp("With a1=(k*R*T1)^0.5=1309ft/s,the relative Mach numbers can be determined.")
Wt=1463
a1=1309
M_rt=Wt/a1
printf("\n M_rt= %0.2f",M_rt)

Wh=792.8
M_rh=Wh/a1
printf("\nM_rh= %0.3f",M_rh)

Wm=1115.0
M_rm=Wm/a1
printf("\n M_rm= %0.2f",M_rm)

disp("Hence the relative flow at the leading edge is transonic,and a supersonic blade might be needed.")
disp("From the previous sum,to achieve a pressure ratio of 4.5,we have deltaTos=324/7=46.3R.")
disp("So deltaTos=45R is selected at the first stage.")
disp("From Cp*deltaTos=lambda*Um*Va*(tanß1m-tanß2m),with lambda=0.95,we obtain tanß2m=1.42. Thus ß2m=54.8 degrees")

tanbeta1=1.99
tanbeta2=1.42
Va=500
Um=996.6
R=(Va/(2*Um))*(tanbeta1+tanbeta2)
printf("\n R=(Va/(2*Um))*(tanbeta1+tanbeta2)= %0.3f",R)

disp("We have nu=(1-R)^0.5")
nu=sqrt(1-R)
printf("\n nu= %0.2f",nu)

disp("This is less than the selected value and is acceptable.")
beta1=63.3
beta2=54.8
deHaller=cos(beta1*%pi/180)/cos(beta2*%pi/180)
printf("\n Also checking the deHaller number W2/W1=cosß1/cosß2=%0.2f >0.70,it is also acceptable",deHaller)

disp("Before proceeding to the next stages,the following parameters have to be specified. The summation of deltaTos should add upto 324degrees.So the following arramgement is chosen")
Stage_number=[1 2 3 4 5 6 7 ];
deltaTos_R=[45 46 47 47 47 47 45];
lambda=[0.95 0.93 0.90 0.89 0.88 0.86 0.85];
R=[0.855 0.8 0.7 0.63 0.60 0.55 0.5];
table=[Stage_number' deltaTos_R' lambda' R']
disp("The table from left to right has values of Stagenumber deltaTos lamdbda and R")
disp(table)

disp("2.Second Stage")

To1=530+45
printf("To1= %0.0f R",To1)

po1=14.7*((1+(0.9*45/530))^3.5)
printf("\n po1= %0.0f psia",po1)

disp("With the specified values of deltaTos,lamda and R,equations 7.1 and 7.2A can be solved for tanß1 and tanß2.")
disp("Hence ß1=62.1 degrees and ß2=52.4 degrees,where W2/W1=0.76>0.70")
beta1=62.1*%pi/180//converting to radians 
V1=[(Va^2)+(Um-(Va*tan(beta1)))^2]^0.5
printf("Also we have V1=[(Va^2)+(Um-(Va*tan(beta1)))^2]^0.5= %0.2f ft/s",V1)//answer in the book is 502.6,however the value found out here is more accurate

Cp=6012
V1=502.6
T1=To1-((V1^2)/(2*Cp))
printf("\nT1= %0.0f R",T1)

po1=19
T1=554
To1=575
p1=po1*((T1/To1)^3.5)
printf("\np1= %0.1f psia",p1)

disp("rho1= p1/(R*T1)= 0.0813 lb_m/ft^3")



disp("A=m/(rho1*Va)=230")
disp("A is also = 2*pi*r_m*b")
disp("Where b=rt-rh and rm is the same as that for the first stage. Hence we have rt=10 in,rh=5.2 in and nu=0.52,which is greater than nu_min(0.447) ")

disp("3.Third to Seventh stage")
disp("The calculation procedure for these stages will be similar to the second stage. The calculations have not been repeated in the book,and hence the same is done here.")
disp("The results are as follows")

Stagenumber=[1 2 3 4 5 6 7];
To1=[530 575 621 668 715 762 809];
po1=[14.7 19 24.3 30.5 37.9 46.3 55.9];
rt=[10.5 10 9.6 9.3 9.1 8.9 8.8];
rh=[4.7 5.2 5.6 5.9 6.1 6.3 6.5];
rm=[7.6 7.6 7.6 7.6 7.6 7.6 7.6 ];
beta1=[63.3 62.1 59.7 57.5 56.5 54.7 52.4];
beta2=[54.9 52.3 47.2 43.2 41.4 38 34.8]
table2=[Stagenumber' To1' po1' rt' rh' rm' beta1' beta2']
disp("Stageno. To1     po1     rt     rh     rm     beta1     beta2")
disp(table2)

disp("The final discharge stagnation pressure can also be checked with the flow across the last stage such that poe=po3=po1(1+ETAs*(deltaTos/To1))^(k/(k-1))")
po1=55.9*(1+(0.9*45/809))^3.5
printf("po1= %0.1f psia",po1)
//let n=poe/poi
n=66.3/14.7
printf("\n This checks with poe/poi = %0.2f",n)






















































































