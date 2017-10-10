//Example 2_6
clc();   
clear;
//To find the forces exerted bythe pedestals on the board
tou=900   //units in Newtons
d1=3  //units in Meters
d2=1.5  //Units in Meters
F1=-(tou*d1)/d2  //Units in Newtons
F2=tou-F1  //units in Newtons
printf("The First Force F1=%d N\n",F1)
printf("The Second Force F2=%d N\n",F2)
