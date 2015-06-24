clear all; clc;

disp("From (poe/poi)=[(Toi+ns*deltaTo)]^(k*eff*p/(k-1))")
disp("From the above mentioned equation we can find out the value of deltaTo")
delta_To=((8^(1/(3.5*0.87)))-1)*530/7
printf("deltaTo= %0.1f degrees Farenheit",delta_To)

Q=450
r_m1=9
b=3
V_a1=(Q*144)/(2*%pi*r_m1*b)
printf("\n Thus Va1 = %0.0f fps",V_a1)

N=12000
U=(N*%pi*9)/(30*12)
printf("\n N= %0.1f fps",U)

disp("deltaho=U*Va*(tanß1-tanß2) and R=(Φ/2)*(tanß1+tanß2")
//let y= tanß1-tanß2
y=[(0.24*778*74.2*32.2)/(942.5*382)]
printf("\n Thus tanß1-tanß2= %0.2f",y)

//let x=tanß1+tanß2
x=(0.5*2*942.5/382)
printf("\n Thus tanß1+tanß2= %0.3f",x)

disp("Hence we get tanß1=1.853")
tanbeta1=1.853
beta_1=(atan(tanbeta1))*180/%pi
printf("\n The value of ß1= %0.1f degrees",beta_1)
disp("Also tanß2=0.613")
tanbeta2=0.613
beta_2=(atan(tanbeta2))*180/%pi
printf("\n The value of ß2=α1= %0.1f degrees",beta_2)

disp("Ps=m*Cp*ns*deltaTo/etam")
P_s=(0.075*450*0.24*778*7*74.2)/(550*0.95)
printf("\n The total power required is Ps= %0.0f hp",P_s)

disp("The adiabetic efficiency is given as ((poe/poi)^(((k-1)/k))-1/((Toe/Toi)-1)")
ETA_ad=0.811/0.979
printf("\n Thus adiabetic efficiency is %0.4f",ETA_ad)//answer given in the book is 0.827,but this is more accurate

disp("ETAc=ETAm*ETAad")
ETA_m=0.95
ETA_ad=0.827
ETA_c=ETA_m*ETA_ad
printf(" Hence ETAc= %0.3f ",ETA_c)
disp("Thus ETAc=78.6%")











