NV=168
N=7
NVpc=NV/N//number of voice channels omnidirectional case

NS=3
NScl=N*NS
NcS=NV/NScl //number of voice channels 3-sector

NS1=6
NScl1=N*NS1
NcS1=NV/NScl1 //number of voice channels 6-sector

disp(NVpc,'number of voice channels assigned in each cell')

disp(NcS,'number of voice channels assigned in each sector(3-sector case)')

disp(NcS1,'number of voice channels assigned in each sector(6-sector case)')
