//ques-2.15
//Calculating volume of air supplied for fuel
clc
M=5;//Percentage of Methane in gaseous fuel
H=20;//Percentage of Hydrogen in gaseous fuel
CM=25;//Percentage of Carbon Monoxide in gaseous fuel
CD=6;//Percentage of Carbon dioxide in gaseous fuel
N=100-(M+H+CM+CD);//Percentage of Nitrogen in gaseous fuel
e=20;//Percentage of excess air supplied
v1=(M/100)*2;//Volume of oxygen required for methane (in kL)
v2=(H/100)*0.5;//Volume of oxygen required for hydrogen (in kL)
v3=(CM/100)*0.5;//Volume of oxygen required for carbon monoxide (in kL)
v4=CD/100;//Volume of oxygen required for carbon dioxide (in kL)
v5=N/100;//Volume of oxygen required for nitrogen (in kL)
V=(v1+v2+v3)*(100/21);//Volume of air for gaseous fuel (in kL)
V=V*(1+e/100);//Volume of air for gaseous fuel using excess (in kL)
v6=M/100+CM/100+v4;//Final volume of carbon dioxide as dry product (in kL)
v7=(e/100)*(v1+v2+v3);//Final volume of oxygen as dry product (in kL)
v8=v5+V*(77/100);//Final volume of nitrogen as dry product (in kL)
V_T=v6+v7+v8;//Total volume (in kL)
P_C=(v6/V_T)*100;//Percentage of carbon dioxide as dry product
P_O=(v7/V_T)*100;//Percentage of oxygen as dry product
P_N=(v8/V_T)*100;//Percentage of nitrogen as dry product
printf("The volume of air required for gaseous fuel is %.3f kL.\n",V);
printf(" Percentage of carbon dioxide, oxygen and nitrogen as dry product are %.3f, %.3f and %.2f respectively.",P_C,P_O,P_N);
