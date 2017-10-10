//ques-2.20
//Calculating theoretical quantity of air required and percentage of products of combustion and percentage of dry products when excess air is used and weight of dry gas on burning producer gas
clc
M=3.5;//Percentage of methane in producer gas
CM=25;//Percentage of carbon monoxide in producer gas
H=10;//Percentage of hydrogen in producer gas
CD=10.8;//Percentage of carbon dioxide in producer gas
N=50.7;//Percentage of nitrogen in producer gas
v1=(M/100)*2;//volume of oxygen for methane (in kL)
v2=(CM/100)*0.5;//volume of oxygen for carbon monoxide (in kL)
v3=(H/100)*0.5;//volume of oxygen for hydrogen (in kL)
V1=(M/100+CM/100)*1;//Volume of carbon dioxide as product (in kL)
V2=(M/100)*2+(H/100)*1;//Volume of water as product (in kL)
e=25;//Percentage of excess air used

//Part (i)
a=(v1+v2+v3)*(100/21);//theoretical amount of air
printf("Theoretical quantity of air required is %.2f kL.\n",a);

//Part (ii)
V_CD=V1+CD/100;//Total volume of carbon dioxide (in kL)
V_W=V2;//Total volume of water (in kL)
V_N=a*(79/100)+N/100;//Total volume of nitrogen (in kL)
V_T=V_CD+V_W+V_N;//Total volume (in kL)
p1=(V_CD/V_T)*100;//Percentage of carbon dioxide
p2=(V_W/V_T)*100;//Percentage of water
p3=(V_N/V_T)*100;//Percentage of nitrogen
printf(" The percentages of carbon dioxide, water and nitrogen in products of combustion are %.1f, %.2f and %.2f respectively.\n",p1,p2,p3);

//Part (iii) (with excess air)
V_N=a*(79/100)*(1+e/100)+N/100;//Total volume of nitrogen (in kL)
V_O=(v1+v2+v3)*(25/100);//Total volume of oxygen (in kL)
total=V_CD+V_N+V_O;//Total volume (in kL)
p1=(V_CD/total)*100;//Percentage of carbon dioxide
p2=(V_N/total)*100;//Percentage of nitrogen
p3=(V_O/total)*100;//Percentage of oxygen
printf(" The percentages of carbon dioxide, nitrogen and oxygen as dry products of combustion whenexcess air is used are %.1f, %.1f and %.2f respectively.\n",p1,p2,p3);

//Part (iv)
W=V_CD*1000*(44/22.4)+V_N*1000*(28/22.4)+V_O*1000*(32/22.4);//Weight of dry products (in g)
printf(" The weight of dry products of combustion on burning producer gas is %.3f kg.",W/1000);

