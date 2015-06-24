clear
clc
CAo=[2;5;6;6;11;14;16;24];//mmol/m3
CA=[0.5;3;1;2;6;10;8;4];//mmol/m3
t=[30;1;50;8;4;20;20;4];//min
vo=0.1;//m3/min
for i=1:8
    inv_rA(i)=t(i)/(CAo(i)-CA(i));
end
//Sorting CA and accordingly changing -1/rA for plotting graph between CA and -1/rA
for i=1:8
    for j=i:8
        if CA(i)>CA(j)
        temp=CA(i);
        CA(i)=CA(j);
        CA(j)=temp;
        temp1=inv_rA(i);
        inv_rA(i)=inv_rA(j);
        inv_rA(j)=temp1;
        end
    end
end
plot(CA,inv_rA)
xlabel('CA(mmol/m3)');ylabel('-1/rA(m3.min/m mol)');
disp('From the graph,we can see that we should use plug flow with recycle')
//From fig
CAin=6.6;//mmol/m3
R=(10-6.6)/(6.6-1);
//V=t*vo=area*vo
V=(10-1)*1.2*vo;
vr=vo*R;
printf("\n Part a")
printf("\n  The vol of reactor is %f",V)
printf("m3 \n The recycle flow rate is %f",vr)
printf("m3/min")
//Part b,from fig
t=(10-1)*10;
t1=(10-2.6)*0.8;
t2=(2.6-1)*10;
//For 1  tank
V=t*vo;
//For  2 tank
V1=t1*vo;
V2=t2*vo;
Vt=V1+V2;
printf("\n Part b")
printf("\n For 1 tank volume is %f",V)
printf("m3 \n For 2 tank the volume is %f",Vt)
printf("m3")
printf("\n Part c")
disp('We should use mixed flow followed by plug flow')
//For MFR
tm=(10-4)*0.2;
Vm=tm*vo;
//For PFR
tp=5.8;//by graphical integration
Vp=tp*vo;
Vtotal=Vp+Vm;
printf("\n For MFR volume(m3) is %f",Vm)
printf("\n For PFR volume(m3) is %f",Vp)
printf("\n Total volume is %f",Vtotal)
printf("m3")