
clf()
clc
clear
//Input data
t1x=[0,6]//Time range in hours
t2x=[6,12]//Time range in hours
t3=[12,14]//Time range in hours
t4=[14,18]//Time range in hours
t5=[18,24]//Time range in hours
L=[30,90,60,100,50]//Load in MW

//Calculations
t1=[0,6,6,12,12,14,14,18,18,24,24]//Time in hours for Load curve
L1=[30,30,90,90,60,60,100,100,50,50,0]//Load in MW for Load curve
t2=[0,4,4,10,10,12,12,18,18,24,24]//Time in hours for Load duration curve
L2=[100,100,90,90,60,60,50,50,30,30,24]//Load in MW for Load duration curve
E=((L(1)*(t1x(2)-t1x(1)))+(L(2)*(t2x(2)-t2x(1)))+(L(3)*(t3(2)-t3(1)))+(L(4)*(t4(2)-t4(1)))+(L(5)*(t5(2)-t5(1))))//Energy generated in MWh
AL=E/24//Average load in MW
MD=max(L(1),L(2),L(3),L(4),L(5))//Maximum demand in MW
LF=(AL/MD)//Load factor
Lx=[30,10]//Loads for selecting suitable generating units in MW
tx=[24,18,10,4]//Time for selecting suitable generating units in hrs
PC=(Lx(1)*tx(4)+Lx(2)*1)//Plant capacity in MW
CF=(E/(PC*24))//Capacity factor 

//Output
subplot(221)
plot(t1,L1)//Load curve taking Time in hrs on X- axis and Load in MW on Y- axis
xtitle('Load curve','Time hrs','Load MW')
subplot(222)
plot(t2,L2)//Load duration curve taking Time in hrs on X- axis and Load in MW on Y- axis
xtitle('Load duration curve','Time hrs','Load MW')
printf('(c)Suitable generating units to supply the load are\ni)One unit of %3.0f MW will run for %3.0f hours\nii)One unit of %3.0f MW will run for %3.0f hours\niii)One unit of %3.0f MW will run for %3.0f hours\niv)One unit of %3.0f MW will run for %3.0f hours\n\n(d)Load factor is %3.2f\n\n(e)Capacity of the plant is %3.0f MW and Capacity factor is %3.3f',Lx(1),tx(1),Lx(1),tx(2),Lx(1),tx(3),Lx(2),tx(4),LF,PC,CF)
