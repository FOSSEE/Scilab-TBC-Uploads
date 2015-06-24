clear all; clc;

r_h=15
r_t=24
r_m=((r_h^2+r_t^2)/2)^0.5
printf("rm= %0.0f in",r_m)

N=6000
r_m=20
U_m=N*%pi*r_m/(12*30)
printf("\n U_m= %0.2f ft/s",U_m)

disp("We have psia=lamda*psi=lambda*phi*(tanßm1-tanßm2)")
//let x=tanßm1-tanßm2
x=(0.24*778*32.2*35)/(0.92*1047.2*450)
printf("\n Hence we can find out tanßm1-tanßm2= %0.3f",x)

disp("From equation 7.2B for Rm=0.5 we have αm1=ßm2")
disp("We get values of tanαm1+tanßm1=2.325 and tanαm2+tanßm2=2.325")

disp("Hence we have tanßm1-tanαm1=0.485")

tanalpham1=0.92
alpham_1=((atan(tanalpham1)))*180/%pi
printf("\n Thus αm1= %0.1f degrees",alpham_1)

tanalpham2=1.405
alpham_2=((atan(tanalpham2)))*180/%pi
printf("\n Thus αm2= %0.2f degrees",alpham_2)

disp("To determine the flow angles at the hub and tip,we use the free vortex condition of Vur=const, or rhtanαh=rttanαt=rmtanαm.Hence the flow angles can be determined.")

tanalphah1=0.92*20/15
printf("\n tanαh1= %0.3f",tanalphah1)
alpha_h1=((atan(tanalphah1)))*180/%pi
printf("\nThus αh1= %0.1f degrees",alpha_h1)

tanalphat1=0.92*20/24
printf("\n\n tanαt1= %0.3f",tanalphat1)
alpha_t1=((atan(tanalphat1)))*180/%pi
printf("\n Thus αt1= %0.1f degrees",alpha_t1)

tanalphah2=1.405*20/15
printf("\n\n tanαh2= %0.3f",tanalphah2)
alpha_h2=((atan(tanalphah2)))*180/%pi
printf("\n Thus αh1= %0.1f degrees",alpha_h2)

tanalphat2=1.405*20/24
printf("\n\n tanαt2= %0.3f",tanalphat2)
alpha_t2=((atan(tanalphat2)))*180/%pi
printf("\n Thus αh1= %0.1f degrees",alpha_t2)

disp("The degree of reaction at the hub and tip can be determined.")
Rh=1-((1-0.5)/((15/20)^2))
Rt=1-((1-0.5)/((24/20)^2))
printf("\n Rh= %0.2f",Rh)
printf("\n Rt= %0.2f",Rt)
































