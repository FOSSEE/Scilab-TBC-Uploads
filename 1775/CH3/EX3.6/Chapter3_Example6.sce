//Chapter-3, Illustration 6, Page 144
//Title: Internal Combustion Engines
//=============================================================================
clc
clear

//INPUT DATA
BP0=12;//Brake Power output in kW
BP1=40.5;//Brake Power in trial 1 in kW
BP2=40.2;//Brake Power in trial 2 in kW
BP3=40.1;//Brake Power in trial 3 in kW
BP4=40.6;//Brake Power in trial 4 in kW
BP5=40.7;//Brake Power in trial 5 in kW
BP6=40.0;//Brake Power in trial 6 in kW

//CALCULATIONS
BPALL=BP0+BP6;//Total Brake Power in kW
IP1=BPALL-BP1;//Indicated Power in trial 1 in kW
IP2=BPALL-BP2;//Indicated Power in trial 2 in kW
IP3=BPALL-BP3;//Indicated Power in trial 3 in kW
IP4=BPALL-BP4;//Indicated Power in trial 4 in kW
IP5=BPALL-BP5;//Indicated Power in trial 5 in kW
IP6=BPALL-BP6;//Indicated Power in trial 6 in kW
IPALL=IP1+IP2+IP3+IP4+IP5+IP6;//Total Indicated Power in kW
nM=(BPALL/IPALL)*100;//Mechanical efficiency

//OUTPUT
mprintf('Indicated Power of the engine is %3.1f kW \n Mechanical efficiency of the engine is %3.1f percent',IPALL,nM)



//==============================END OF PROGRAM=================================
