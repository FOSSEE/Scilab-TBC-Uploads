//ques-2.16
//Calculating percentage of dry product obtained
clc
H=0.194;//Volume of hydrogen (in kL)
CM=0.205;//Volume of carbon monoxide (in kL)
N=0.501;//Volume of nitrogen (in kL)
M=0.042;//Volume of methane (in kL)
CD=0.06;//Volume of carbon dioxide (in kL)
e=30;//Percentage of excess air supplied
V=(H*0.5+CM*0.5+M*2)*(100/21)*(1+e/100);//Volume of air (with excess) required for combustion
v1=CD+CM+M;//Final volume of carbon dioxide (in kL)
v2=N+V*(79/100);//Final volume of nitrogen (in kL)
v3=V*(21/100);//Final volume of oxygen (in kL)
V_T=v1+v2+v3;//Total volume of dry products
c=(v1/V_T)*100;//Percentage of carbon dioxide
n=(v2/V_T)*100;//Percentage of nitrogen
o=(v3/V_T)*100;//Percentage of oxygen
printf("The percentages of carbon dioxide, nitrogen, oxygen as dry products are %.2f, %.2f and %.2f respectively.",c,n,o);
