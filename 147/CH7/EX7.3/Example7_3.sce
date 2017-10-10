close();
clear;
clc;
V1 = 5; //V
V2 = 3; //V
R = 500; //ohm
//vd<0 thus
id1 = 0;
//By KVL
id2 = (V1-V2)/R; //A
mprintf("id1 = %d A\nid2 = %d mA\n",id1,id2*1000);