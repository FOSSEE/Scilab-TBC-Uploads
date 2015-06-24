clc
T1=373; //K
p1=1; //bar
p3=65; //bar
p4=p3;
Vs=0.0085; //m^3
ratio=21; //Air fuel ratio
r=15;
C=43890; //kJ/kg
cp=1;
cv=0.71;
V2=0.0006; //m^3
V1=0.009; //m^3
y=1.41;
V5=V1;
V3=V2;
R=287;

p2=p1*(r)^y;
T2=T1*r^(y-1);
T3=T2*p3/p2;
m=p1*10^5*V1/R/T1;

Q1=m*cv*(T3-T2); //Heat added during constant volume process 2-3
amt=Q1/C; //Amount of fuel added during the constant volume process 2-3
total=m/ratio; //Total amount of fuel added
quantity=total-amt; //Quantity of fuel added during the process 3-4

Q2=quantity*C; //Heat added during constant pressure process

T4=Q2/(m+total)/cp+T3;
V4=V3*T4/T3;
T5=T4*(V4/V5)^(y-1);

Q3=(m+total)*cv*(T5-T1); //Heat rejected during constant volume process 5-1

W=(Q1+Q2) - Q3;

n_th=W/(Q1+Q2);
disp("Thermal efficiency =")
disp(n_th)