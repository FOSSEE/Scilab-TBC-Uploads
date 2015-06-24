//Ex:35
clc;
clear;
close;
l_fs=202;//free space loss in db
l_ab=0.5;//atmospheric absorption loss in db
l_ap=1;//antenna pointing loss in db
l_rf=2;//receiver feedback loss in db
l_s=l_fs+l_ab+l_ap+l_rf;//losses in db
printf("the total link loss=%f db",l_s);