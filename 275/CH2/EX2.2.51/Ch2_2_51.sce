clc
disp("Example 2.51")
printf("\n")
disp("calculate load & source effects & load & line regulation")
printf("Given\n")
Vo1=15
Vo2=14.9
//load effect=delVo for delIL(max)
LE=Vo1-Vo2
//Load regulation
LR=LE*100/Vo1
//source effect=delVo for 10% change in Vs
V=14.95
SE=Vo1-V
//Line regulation
LiR=(SE/Vo1)*100
printf("load effect \n %f volt\n",LE)
printf("load regulation \n%f \n",LR)
printf("source effect \n %f volt\n",SE)
printf("line regulation \n%f\n",LiR)
