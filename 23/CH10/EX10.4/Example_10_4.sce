clear;
clc;

//To find Approx Value
function[A]=approx(V,n)
  A=round(V*10^n)/10^n;//V-Value  n-To what place
  funcprot(0)
endfunction  

//Example 10.4
//Caption : Program To Find the Dewpoint and Bubblepoint Pressure

T=283.15;//[K]
//(a) Dew Point Pressure
//Species=[" Methane ";" Ethane ";" Propane "];
y=[0.1,0.2,0.7];

P1=6.9;//[bar]
K1=[20,3.25,0.92];
x1=approx(y./K1,3);

P2=10.34;//[bar]
K2=[13.2,2.25,0.65];
x2=approx(y./K2,3);

P3=8.7;//[bar]
K3=[16,2.65,0.762];
x3=approx(y./K3,3);

i=1;
j=1;
P=[P1,P2,P3];
x=[x1;x2;x3];
E1=zeros(1,3);
for(i=1:3)
  for(j=1:3)
    E1(i)=E1(i)+x(i,j);//Summation
    //j=j+1;
  end
  //i=i+1;
end
P_dew = 8.7;
Ans=[y',K1',x1',K2',x2',K3',x3';1,0,E1(1),0,E1(2),0,E1(3)];
disp(    '               P=6.9 bar      P=10.34 bar     P=8.7 bar')
disp(Ans,'   yi      Ki     yi/Ki     Ki     yi/Ki     Ki      yi/Ki')
disp('Last Row Represents the summation')
disp('KPa',P_dew,'The dew Point Pressure')

T=283.15;//[K]
//(b) Bubble Point Pressure
//Species=[" Methane ";" Ethane ";" Propane "];
x=[0.1,0.2,0.7];

P1=26.2;//[bar]
K1=[5.6,1.11,0.335];
y1=approx(x.*K1,3);

P2=27.6;//[bar]
K2=[5.25,1.07,0.32];
y2=approx(x.*K2,3);

P3=26.54;//[bar]
K3=[5.49,1.1,0.33];
y3=approx(x.*K3,3);

i=1;
j=1;
P=[P1,P2,P3];
y=[y1;y2;y3];
E2=zeros(1,3);
for(i=1:3)
  for(j=1:3)
    E2(i)=E2(i)+y(i,j);//Summation
    //j=j+1;
  end
  //i=i+1;
end
P_Bubble = 26.54;
Ans=[x',K1',y1',K2',y2',K3',y3';1,0,E2(1),0,E2(2),0,E2(3)];
disp(    '               P=26.2 bar      P=27.6 bar     P=26.54 bar')
disp(Ans,'   xi      Ki     xiKi     Ki     xiKi     Ki      xiKi')
disp('Last Row Represents the summation')
disp('KPa',P_Bubble,'The Bubble Point Pressure')

//End