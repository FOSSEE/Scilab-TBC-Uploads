disp('chapter 3 ex3.2')
disp('given')
disp('resistor connected Rs=47kohms and RL=20kohms')
disp('voltage follower Vs=1Volt')
disp('voltage load VL=Vs*RL/(Rs+RL)')
Rs=47000
RL=20000
Vs=1
VL=Vs*RL/(Rs+RL)
disp(VL)
disp('Zin=(1+M)*Zi')
disp('M=200000 and Zi=2Mohms')
M=200000
Zi=2000000
Zin=(1+M)*Zi
disp('ohms',Zin)
disp('Vi=Vs*Zin/(Rs+Zin)')
Vi=Vs*Zin/(Rs+Zin)
disp('volt',Vi)
disp('Vo=Vi*(1-1/M)')
Vo=Vi*(1-1/M)
disp('volt',Vo)
disp('Zout=Zo/(1+M)')
disp('Zo=75ohms')
Zo=75
Zout=Zo/(1+M)
disp('ohms',Zout)
disp('VL=Vo*RL/(RL+Zout)')
VL=Vo*RL/(RL+Zout)
disp('volt',VL)
