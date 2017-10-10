clc;
Idss=0.003;
Vgs=[0 -1 -3 -5];
Vgsoff=-6;
Id=zeros(1,5);
Id(1,1)=Idss*(1-(Vgs(1,1)/Vgsoff))^2;
Id(1,2)=Idss*(1-(Vgs(1,2)/Vgsoff))^2;
Id(1,3)=Idss*(1-(Vgs(1,3)/Vgsoff))^2;
Id(1,4)=Idss*(1-(Vgs(1,4)/Vgsoff))^2;
Vgs1=[0 -1 -3 -5 -6];
plot(Vgs1,Id*1000)
xlabel('Vgs(V)')
ylabel('Id(mA)')


