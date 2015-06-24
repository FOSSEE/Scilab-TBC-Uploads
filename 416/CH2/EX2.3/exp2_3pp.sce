clc
disp("example 2.3")
printf("\n")
cola=5;na=600;ns=20;
cls=2;clfm=10;clsm=5;cll=20;clci=80;
dffl=0.7;dfsm=0.8;dfl=0.65;dfci=0.5;
nsl=200;clsl=0.04;dfa=0.5;gdfa=3.0;
pdfa=1.25;gdfc=2;pdfc=1.6;dfs=0.8; //given col||cl=connected load,n=number,df=demand factor,gdf=group diversity factor,pdf=peak diversity factor,a=appartement,c=commertials,s=shop,sl=streetlight,fm=flourmill,sm=saw mill,l=laundry,ci=cinema complex.
mdea=cola*dfa
printf("maximum demand of each appartment =%.2fkWh \n",mdea)
mda=(na*mdea)/gdfa
printf("maximum demand of 600 apatments =%.2fkW \n",mda);
datsp=mda/pdfa
printf("demand of 600 apartments at time of the system peak =%dkW \n",datsp); 
mdtcc=((cls*ns*dfs)+(clfm*dffl)+(clsm*dfsm)+(cll*dfl)+(clci*dfci))/gdfc
printf("maximum demand of total commertial complex=%dkW \n",mdtcc)
dcsp=mdtcc/pdfc
printf("demand of the commertial load at the time of the peak = %dkW\n",dcsp);
dsltsp=nsl*clsl
printf("demand of the street lighting at the time of the system peak =%dkW",dsltsp);
ispd=datsp+dcsp+dsltsp
printf("\nincrease in system peak deamand =%dkW ",ispd)

