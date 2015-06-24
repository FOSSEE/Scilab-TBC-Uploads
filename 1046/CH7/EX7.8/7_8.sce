//Example 7.8
//Consider an enclosure consisting of a hemisphere 
//of diameter d and a flat surface
//of the same diameter.
//Find the relevant view factor

//Variables declaration
F11=0        //view factor
d=1           //let it be
printf("view factor F11 = %f" ,F11)

//Calculation
F12=1-F11   //view factor
printf( "view factor F22 =%f",F12)

A1=((%pi)*d^2)/4   //sq m, area
A2=((%pi)*d^2)/2   //sq m, area
F21=A1/A2            //from eq . 7.26
printf("view factor F21 =%f", F21)
F22=1-F21  
//Results
printf("view factor=%f",F22)
