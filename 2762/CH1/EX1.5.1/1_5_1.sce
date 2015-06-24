//Transport Processes and Seperation Process Principles
//Chapter 1
//Example 1.5-1
//Applying materal balance, input=output+accumulation => 1000= W+C
//Applying material balance for solids, 1000*xf= W(0)+ C*xc  =>C= 1000*xf/xc
C= (1000*7.08)/58; 
W=1000-C;
mprintf("The flow rate of water=%f kg/h",W);
mprintf("the flow rate of concentrated juice=%f kg/h",C);
//end\       
